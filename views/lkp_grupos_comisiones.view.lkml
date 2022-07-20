view: lkp_grupos_comisiones {
  sql_table_name: `LOOKER.lkp_grupos_comisiones`
    ;;

  dimension: codigo_grupo {
    type: number
    sql: ${TABLE}.Codigo_Grupo ;;
  }

  dimension: codigo_grupo_directorio {
    type: number
    sql: ${TABLE}.Codigo_Grupo_Directorio ;;
  }

  dimension: cuenta_contable {
    type: number
    sql: ${TABLE}.Cuenta_Contable ;;
  }

  dimension: flg_origen {
    type: number
    sql: ${TABLE}.Flg_Origen ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }

  dimension: grupo_directorio {
    type: string
    sql: ${TABLE}.Grupo_Directorio ;;
  }

  dimension: nombre_cuenta {
    type: string
    sql: ${TABLE}.Nombre_Cuenta ;;
  }

  dimension: plan_cuentas_key {
    type: number
    sql: ${TABLE}.Plan_Cuentas_Key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
