view: lkp_plan_cuentas {
  sql_table_name: `LOOKER.lkp_plan_cuentas`
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

  dimension: agrupacion_comisiones_1 {
    type: string
    sql: ${TABLE}.Agrupacion_Comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    type: string
    sql: ${TABLE}.Agrupacion_Contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    type: string
    sql: ${TABLE}.Agrupacion_Contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    type: string
    sql: ${TABLE}.Agrupacion_Gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    type: string
    sql: ${TABLE}.Agrupacion_Gastos_2 ;;
  }

  dimension: bloqueo {
    type: string
    sql: ${TABLE}.Bloqueo ;;
  }

  dimension: capitulo {
    type: string
    sql: ${TABLE}.Capitulo ;;
  }

  dimension: codigo_cuenta {
    type: number
    sql: ${TABLE}.Codigo_Cuenta ;;
  }

  dimension: codigo_moneda {
    type: number
    sql: ${TABLE}.Codigo_Moneda ;;
  }

  dimension: cuenta_contable {
    type: number
    sql: ${TABLE}.Cuenta_Contable ;;
  }

  dimension: inventario {
    type: string
    sql: ${TABLE}.Inventario ;;
  }

  dimension: moneda_residencia {
    type: string
    sql: ${TABLE}.Moneda_Residencia ;;
  }

  dimension: movimiento {
    type: string
    sql: ${TABLE}.Movimiento ;;
  }

  dimension: naturaleza_cuenta {
    type: string
    sql: ${TABLE}.Naturaleza_Cuenta ;;
  }

  dimension: nivel {
    type: number
    sql: ${TABLE}.Nivel ;;
  }

  dimension: nombre_cuenta {
    type: string
    sql: ${TABLE}.Nombre_Cuenta ;;
  }

  dimension: otros_atributos {
    type: string
    sql: ${TABLE}.Otros_Atributos ;;
  }

  dimension: plan_cuentas_key {
    type: number
    sql: ${TABLE}.Plan_Cuentas_Key ;;
  }

  dimension: publica {
    type: string
    sql: ${TABLE}.Publica ;;
  }

  dimension: rubro {
    type: string
    sql: ${TABLE}.Rubro ;;
  }

  dimension: sector_responsable_key {
    type: number
    sql: ${TABLE}.Sector_Responsable_Key ;;
  }

  dimension: uso_cuenta {
    type: string
    sql: ${TABLE}.Uso_Cuenta ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
