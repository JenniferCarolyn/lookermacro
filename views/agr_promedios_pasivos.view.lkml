view: agr_promedios_pasivos {
  sql_table_name: `LOOKER.agr_promedios_pasivos`
    ;;

  dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}.Saldo ;;
  }

  dimension: saldo_promedio_mes {
    type: number
    sql: ${TABLE}.Saldo_Promedio_Mes ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
