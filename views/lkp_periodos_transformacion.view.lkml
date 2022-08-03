view: lkp_periodos_transformacion {
  sql_table_name: `bm-gcp-s1-ingdts.LOOKER.lkp_periodos_transformacion`
    ;;

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHA ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.FECHA_KEY ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.PERIODO ;;
  }

  dimension: periodo_anio_ant {
    type: string
    sql: ${TABLE}.PERIODO_ANIO_ANT ;;
  }

  dimension: periodo_fin_anio_ant {
    type: string
    sql: ${TABLE}.PERIODO_FIN_ANIO_ANT ;;
  }

  dimension: periodo_mes_ant {
    type: string
    sql: ${TABLE}.PERIODO_MES_ANT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
