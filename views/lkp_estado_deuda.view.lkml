view: lkp_estado_deuda {
  sql_table_name: `LOOKER.lkp_estado_deuda`
    ;;

  dimension: estado_deuda {
    type: string
    sql: ${TABLE}.Estado_Deuda ;;
  }

  dimension: estado_deuda_key {
    type: number
    sql: ${TABLE}.Estado_Deuda_Key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
