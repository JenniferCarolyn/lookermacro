view: cartera_activa_pdt {
  derived_table: {
    sql: select    a.Fecha_Key,
                               a.Cliente_Key,
                               cc.Tipo_Persona_Key,
                               cc.Banca_Comite_Key,
                               cc.Sucursal_Radicacion_Key,
                               a.Sector_Key,
                               cc.Oficial_Cuenta_Key,
                               MAX(oc.Oficial_Cuenta) as Oficial_Cuenta,
                               MAX(oc.Identificacion_Usuario) as Identificacion_Usuario,
                               d.Producto as Clasificacion_Producto,
                               a.Especie_Key,
                               sum(a.Saldo_Deuda) as Saldo
FROM  fct_cartera_activa a
LEFT OUTER JOIN lkp_fechas b on (a.Fecha_Key=b.Fecha_Key)
LEFT OUTER JOIN lkp_cuentas c on (a.Cuenta_Key=c.Cuenta_Key)
LEFT OUTER JOIN lkp_clientes_completa cc on (a.Cliente_Key=cc.Cliente_Key)
LEFT OUTER JOIN lkp_productos d on (c.Producto_Key=d.Producto_Key)
LEFT OUTER JOIN lkp_bancas e on (cc.Banca_Comite_Key=e.Banca_Key)
LEFT OUTER JOIN lkp_oficiales_cuentas oc on (cc.Oficial_Cuenta_Key=oc.Oficial_Cuenta_Key)
WHERE                 b.Periodo >= '2019-01' and
                               b.Flag_Fin_Mes = 'S' and
                               e.Banca in ('Agro','Corporativa','Megra','Empresas') and
                               d.Producto = 'Tarjetas de Crédito' and
                               a.Banco_Key = 95
GROUP BY          a.Fecha_Key,
                                               a.Sector_Key,
                                               a.Cliente_Key,
                                               cc.Tipo_Persona_Key,
                                               cc.Banca_Comite_Key,
                                               cc.Sucursal_Radicacion_Key,
                                               cc.Oficial_Cuenta_Key,
                                               d.Producto,
                                               a.Especie_Key
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: tipo_persona_key {
    type: number
    sql: ${TABLE}.Tipo_Persona_Key ;;
  }

  dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.Oficial_Cuenta ;;
  }

  dimension: identificacion_usuario {
    type: string
    sql: ${TABLE}.Identificacion_Usuario ;;
  }

  dimension: clasificacion_producto {
    type: string
    sql: ${TABLE}.Clasificacion_Producto ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}.Saldo ;;
  }

  set: detail {
    fields: [
      fecha_key,
      cliente_key,
      tipo_persona_key,
      banca_comite_key,
      sucursal_radicacion_key,
      sector_key,
      oficial_cuenta_key,
      oficial_cuenta,
      identificacion_usuario,
      clasificacion_producto,
      especie_key,
      saldo
    ]
  }
}
