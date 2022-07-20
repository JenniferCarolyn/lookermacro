view: cartera_activa_final {
  derived_table: {
    sql: select
      b.Periodo,
      cc.Nro_Doc_Tributario,
      cc.Codigo_Cliente,
      cc.Nombre,
      oc.Oficial_Cuenta,
      e.Banca,
      e.Segmento,
      e.Subsegmento,
      sr.Division,
      sr.Region,
      'Cartera Activa' as Grupo,
      a.Clasificacion_Producto as Producto,
      sum(a.Saldo) Importe

      from
      (select    a.Fecha_Key,
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
      a.Especie_Key) a
      left join lkp_fechas b on (a.Fecha_Key=b.Fecha_Key)
      left join lkp_clientes_completa cc on (a.Cliente_Key=cc.Cliente_Key)
      left join lkp_bancas e on (cc.Banca_Comite_Key=e.Banca_Key)
      left join lkp_sucursales_radicacion sr on (cc.Sucursal_Radicacion_Key=sr.Sucursal_Radicacion_Key)
      left join lkp_oficiales_cuentas oc on (cc.Oficial_Cuenta_Key=oc.Oficial_Cuenta_Key)

      where
      b.Periodo >= '2021-01'
      and b.Flag_Fin_Mes = 'S'

      group by
      b.Periodo,
      cc.Nro_Doc_Tributario,
      cc.Codigo_Cliente,
      cc.Nombre,
      oc.Oficial_Cuenta,
      e.Banca,
      e.Segmento,
      e.Subsegmento,
      sr.Division,
      sr.Region,
      Grupo,
      Producto
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: nro_doc_tributario {
    type: number
    sql: ${TABLE}.Nro_Doc_Tributario ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.Codigo_Cliente ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.Oficial_Cuenta ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.Banca ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.Segmento ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.Subsegmento ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.Importe ;;
  }

  set: detail {
    fields: [
      periodo,
      nro_doc_tributario,
      codigo_cliente,
      nombre,
      oficial_cuenta,
      banca,
      segmento,
      subsegmento,
      division,
      region,
      grupo,
      producto,
      importe
    ]
  }
}
