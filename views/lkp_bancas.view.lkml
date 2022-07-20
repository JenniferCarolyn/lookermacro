view: lkp_bancas {
  sql_table_name: `LOOKER.lkp_bancas`
    ;;

  dimension: agrupacion_segmento_comite {
    type: string
    sql: ${TABLE}.Agrupacion_Segmento_Comite ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.Banca ;;
  }

  dimension: banca_key {
    type: number
    sql: ${TABLE}.Banca_Key ;;
  }

  dimension: banca_original_key {
    type: number
    sql: ${TABLE}.Banca_Original_Key ;;
  }

  dimension: banca_source {
    type: string
    sql: ${TABLE}.Banca_Source ;;
  }

  dimension: cambio_segmento_cobis {
    type: string
    sql: ${TABLE}.Cambio_Segmento_Cobis ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: categoria_source {
    type: string
    sql: ${TABLE}.Categoria_Source ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.FECHA_ALTA ;;
  }

  dimension_group: fecha_modificacion {
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
    sql: ${TABLE}.FECHA_MODIFICACION ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.Segmento ;;
  }

  dimension: segmento_comercial {
    type: string
    sql: ${TABLE}.Segmento_Comercial ;;
  }

  dimension: segmento_comercial_key {
    type: number
    sql: ${TABLE}.Segmento_Comercial_Key ;;
  }

  dimension: segmento_source {
    type: string
    sql: ${TABLE}.Segmento_Source ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.Subsegmento ;;
  }

  dimension: subsegmento_comercial {
    type: string
    sql: ${TABLE}.Subsegmento_Comercial ;;
  }

  dimension: subsegmento_source {
    type: string
    sql: ${TABLE}.Subsegmento_Source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
