view: lkp_capitas_plan_sueldo {
  sql_table_name: `LOOKER.lkp_capitas_plan_sueldo`
    ;;

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: capita_key {
    type: number
    sql: ${TABLE}.Capita_Key ;;
  }

  dimension: cliente_capita_key {
    type: number
    sql: ${TABLE}.Cliente_Capita_Key ;;
  }

  dimension: cliente_convenio_key {
    type: number
    sql: ${TABLE}.Cliente_Convenio_Key ;;
  }

  dimension: estado_capita {
    type: string
    sql: ${TABLE}.Estado_Capita ;;
  }

  dimension: fecha_alta_capita_key {
    type: number
    sql: ${TABLE}.Fecha_Alta_Capita_Key ;;
  }

  dimension: fecha_ultimo_estado_key {
    type: number
    sql: ${TABLE}.Fecha_Ultimo_Estado_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
