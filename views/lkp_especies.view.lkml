view: lkp_especies {
  sql_table_name: `bm-gcp-s1-ingdts.LOOKER.lkp_especies`
    ;;

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: especie {
    type: string
    sql: ${TABLE}.Especie ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: subespecie {
    type: string
    sql: ${TABLE}.Subespecie ;;
  }

  dimension: subtipo_especie {
    type: string
    sql: ${TABLE}.Subtipo_Especie ;;
  }

  dimension: tipo_especie {
    type: string
    sql: ${TABLE}.Tipo_Especie ;;
  }

  dimension: tipo_valor_residual {
    type: number
    sql: ${TABLE}.Tipo_Valor_Residual ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
