view: lkp_causales {
  sql_table_name: `LOOKER.lkp_causales`
    ;;

  dimension: agrupacion_1 {
    type: string
    sql: ${TABLE}.Agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    type: string
    sql: ${TABLE}.Agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    type: string
    sql: ${TABLE}.Agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    type: string
    sql: ${TABLE}.Agrupacion_4 ;;
  }

  dimension: agrupacion_cash_nivel_1 {
    type: string
    sql: ${TABLE}.Agrupacion_Cash_Nivel_1 ;;
  }

  dimension: agrupacion_cash_nivel_2 {
    type: string
    sql: ${TABLE}.Agrupacion_Cash_Nivel_2 ;;
  }

  dimension: agrupacion_cash_nivel_3 {
    type: string
    sql: ${TABLE}.Agrupacion_Cash_Nivel_3 ;;
  }

  dimension: causal {
    type: number
    sql: ${TABLE}.Causal ;;
  }

  dimension: causal_key {
    type: number
    sql: ${TABLE}.Causal_Key ;;
  }

  dimension: descripcion_causal {
    type: string
    sql: ${TABLE}.Descripcion_Causal ;;
  }

  dimension: subtema_1 {
    type: string
    sql: ${TABLE}.Subtema_1 ;;
  }

  dimension: subtema_2 {
    type: string
    sql: ${TABLE}.Subtema_2 ;;
  }

  dimension: tema_principal {
    type: string
    sql: ${TABLE}.Tema_Principal ;;
  }

  dimension: tipo_transaccion {
    type: number
    sql: ${TABLE}.Tipo_Transaccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
