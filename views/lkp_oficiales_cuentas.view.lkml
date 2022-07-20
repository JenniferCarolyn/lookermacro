view: lkp_oficiales_cuentas {
  sql_table_name: `LOOKER.lkp_oficiales_cuentas`
    ;;

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: identificacion_usuario {
    type: string
    sql: ${TABLE}.Identificacion_Usuario ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.Oficial_Cuenta ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: oficial_source {
    type: number
    sql: ${TABLE}.Oficial_Source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
