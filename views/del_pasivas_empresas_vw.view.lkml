view: del_pasivas_empresas_vw {
  derived_table: {
    sql: SELECT agr.Fecha_Key,
                               agr.Cliente_Key,
                               c.Banca_Comite_Key,
                               c.Sucursal_Radicacion_Key,
                               c.Oficial_Cuenta_Key,
                               oc.Oficial_Cuenta,
                               oc.Identificacion_Usuario,
                               agr.Sector_Key,
                               agr.Especie_Key,
                               'Fondos Comunes de Inversion' as Clasificacion_Producto,
                               agr.Saldo,
                               agr.Saldo_Promedio_Mes
FROM agr_saldos_fci as agr
join lkp_fechas as a on agr.Fecha_Key = a.Fecha_Key
left outer join lkp_clientes_completa c on c.Cliente_Key = agr.Cliente_Key
left outer join lkp_bancas as b on c.Banca_Comite_Key = b.Banca_Key
left outer join lkp_oficiales_cuentas as oc on c.Oficial_Cuenta_Key = oc.Oficial_Cuenta_Key
WHERE agr.Banco_Key = 95 and b.Banca in( 'Megra','Corporativa','Agro','Empresas' )
UNION ALL
SELECT agr.Fecha_Key,
                               agr.Cliente_Key,
                               c.Banca_Comite_Key,
                               c.Sucursal_Radicacion_Key,
                               c.Oficial_Cuenta_Key,
                               MAX(oc.Oficial_Cuenta) as Oficial_Cuenta,
                               MAX(oc.Identificacion_Usuario) as Identificacion_Usuario,
                               agr.Sector_Key,
                               agr.Especie_Key,
                               h.Producto,
                               SUM(agr.Saldo) as Saldo,
                               SUM(agr.Saldo_Promedio_Mes) as Saldo_Promedio_Mes
FROM agr_promedios_pasivos as agr
join lkp_fechas as a on agr.Fecha_Key = a.Fecha_Key
left outer join lkp_clientes_completa c on c.Cliente_Key = agr.Cliente_Key
left outer join lkp_bancas as d on c.Banca_Comite_Key = d.Banca_Key
left outer join lkp_productos as h on agr.Producto_Key = h.Producto_Key
left outer join lkp_oficiales_cuentas as oc on c.Oficial_Cuenta_Key = oc.Oficial_Cuenta_Key
WHERE agr.Banco_Key = 95
    and h.Cartera in( 'Pasiva' )
    and h.Producto in( 'Cuentas a la vista','Cuentas a plazo','Otras Cuentas' )
    and d.Banca in( 'Megra','Corporativa','Agro','Empresas' )
    and h.Familia_Productos not in( 'Cedros','Oblig. por Canje (Boden)' )
GROUP BY agr.Fecha_Key,
                               agr.Cliente_Key,
                               c.Banca_Comite_Key,
                               c.Sucursal_Radicacion_Key,
                               c.Oficial_Cuenta_Key,
                               agr.Sector_Key,
                               agr.Especie_Key,
                               h.Producto
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

  dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
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

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: clasificacion_producto {
    type: string
    sql: ${TABLE}.Clasificacion_Producto ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}.Saldo ;;
  }

  dimension: saldo_promedio_mes {
    type: number
    sql: ${TABLE}.Saldo_Promedio_Mes ;;
  }

  measure: importe {
    value_format: "0.000,,\" M\""
    type: sum
    sql: ${saldo_promedio_mes} ;;
  }

  measure: max_oficial_cuenta {
    type: max
    sql: ${oficial_cuenta} ;;
  }

  measure: max_identificacion_usuario {
    type: max
    sql: ${identificacion_usuario} ;;
  }

  measure: sum_saldo {
    value_format: "0.000,,\" M\""
    type: sum
    sql: ${saldo} ;;
  }

  measure: sum_saldo_promedio_mes { #El mismo que IMPORTE
    value_format: "0.000,,\" M\""
    type: sum
    sql: ${saldo_promedio_mes} ;;
  }

  set: detail {
    fields: [
      fecha_key,
      cliente_key,
      banca_comite_key,
      sucursal_radicacion_key,
      oficial_cuenta_key,
      oficial_cuenta,
      identificacion_usuario,
      sector_key,
      especie_key,
      clasificacion_producto,
      saldo,
      saldo_promedio_mes,
      importe
    ]
  }
}
