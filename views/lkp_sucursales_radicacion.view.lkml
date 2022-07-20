view: lkp_sucursales_radicacion {
  sql_table_name: `LOOKER.lkp_sucursales_radicacion`
    ;;

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_key ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.Departamento ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.Dimension ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension: inactiva {
    type: number
    sql: ${TABLE}.Inactiva ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.Localidad ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.Provincia ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.Sucursal ;;
  }

  dimension: sucursal_anterior {
    type: string
    sql: ${TABLE}.Sucursal_Anterior ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.Sucursal_Source ;;
  }

  dimension: sucursal_source_anterior {
    type: number
    sql: ${TABLE}.Sucursal_Source_Anterior ;;
  }

  dimension: tipo_sucursal {
    type: string
    sql: ${TABLE}.Tipo_Sucursal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
