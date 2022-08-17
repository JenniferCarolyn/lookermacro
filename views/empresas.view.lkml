view: empresas {
  sql_table_name: `bm-gcp-s1-ingdts.DELIVERY.EMPRESAS`
    ;;

  dimension: banca {
    type: string
    sql: ${TABLE}.Banca ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: codigo_cliente {
    type: string
    sql: ${TABLE}.Codigo_Cliente ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
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

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }

  dimension: importe_sum {
    type: string
    sql: ${TABLE}.Importe_Sum ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.Oficial_Cuenta ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.Segmento ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.Subsegmento ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.Sucursal ;;
  }

  dimension: sucursal_source {
    type: string
    sql: ${TABLE}.Sucursal_Source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
