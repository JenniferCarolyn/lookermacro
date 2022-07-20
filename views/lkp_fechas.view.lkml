view: lkp_fechas {
  sql_table_name: `LOOKER.lkp_fechas`
    ;;

  dimension: a__o {
    type: number
    sql: ${TABLE}.A__o ;;
  }

  dimension: anio_presupuestario {
    type: string
    sql: ${TABLE}.Anio_Presupuestario ;;
  }

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.Dia_Semana ;;
  }

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
    sql: ${TABLE}.Fecha ;;
  }

  dimension_group: fecha_fin_a__o_anterior {
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
    sql: ${TABLE}.Fecha_Fin_A__o_Anterior ;;
  }

  dimension: fecha_fin_a__o_anterior_key {
    type: number
    sql: ${TABLE}.Fecha_Fin_A__o_Anterior_Key ;;
  }

  dimension_group: fecha_fin_mes_anterior {
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
    sql: ${TABLE}.Fecha_Fin_Mes_Anterior ;;
  }

  dimension: fecha_fin_mes_anterior_key {
    type: number
    sql: ${TABLE}.Fecha_Fin_Mes_Anterior_Key ;;
  }

  dimension_group: fecha_fin_trim_anterior {
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
    sql: ${TABLE}.Fecha_Fin_Trim_Anterior ;;
  }

  dimension: fecha_fin_trim_anterior_key {
    type: number
    sql: ${TABLE}.Fecha_Fin_Trim_Anterior_Key ;;
  }

  dimension_group: fecha_habil_anterior {
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
    sql: ${TABLE}.Fecha_Habil_Anterior ;;
  }

  dimension: fecha_habil_anterior_key {
    type: number
    sql: ${TABLE}.Fecha_Habil_Anterior_Key ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension_group: fin_a__o_ant_de_mes_ant {
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
    sql: ${TABLE}.Fin_A__o_Ant_De_Mes_Ant ;;
  }

  dimension: fin_a__o_ant_de_mes_ant_key {
    type: number
    sql: ${TABLE}.Fin_A__o_Ant_De_Mes_Ant_key ;;
  }

  dimension: flag_fin_mes {
    type: string
    sql: ${TABLE}.Flag_Fin_Mes ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.Mes ;;
  }

  dimension: multiplicador {
    type: number
    sql: ${TABLE}.Multiplicador ;;
  }

  dimension: n_dia {
    type: number
    sql: ${TABLE}.N_Dia ;;
  }

  dimension: n_dia_semana {
    type: number
    sql: ${TABLE}.N_Dia_Semana ;;
  }

  dimension: n_mes {
    type: number
    sql: ${TABLE}.N_Mes ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: tipo_dia {
    type: string
    sql: ${TABLE}.Tipo_Dia ;;
  }

  dimension: trimestre {
    type: string
    sql: ${TABLE}.Trimestre ;;
  }

  dimension_group: viernes_anterior {
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
    sql: ${TABLE}.Viernes_Anterior ;;
  }

  dimension: viernes_anterior_key {
    type: number
    sql: ${TABLE}.Viernes_Anterior_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
