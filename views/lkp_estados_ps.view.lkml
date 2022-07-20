view: lkp_estados_ps {
  sql_table_name: `LOOKER.lkp_estados_ps`
    ;;

  dimension: estado_monitor_ps {
    type: string
    sql: ${TABLE}.Estado_Monitor_PS ;;
  }

  dimension: estado_monitor_ps_key {
    type: number
    sql: ${TABLE}.Estado_Monitor_PS_Key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
