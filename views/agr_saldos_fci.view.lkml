view: agr_saldos_fci {
  sql_table_name: `LOOKER.agr_saldos_fci` ;;
fields_hidden_by_default: yes

  dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}.Saldo ;;
  }

  dimension: saldo_promedio_mes {
    type: number
    sql: ${TABLE}.Saldo_Promedio_Mes ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }
  dimension: clasificacion_producto {
    hidden: no
    type: string
    sql: "Fondos común de Inversión" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: importe {
    value_format: "#,##0,,\" M\""
    type: sum
    sql: ${saldo_promedio_mes} ;;
    }

  measure: sum_saldo {
    value_format: "#,##0,,\" M\""
    type: sum
    sql: ${saldo} ;;
    }

  measure: sum_saldo_promedio_mes { #El mismo que IMPORTE
    value_format: "#,##0,,\" M\""
    type: sum
    sql: ${saldo_promedio_mes} ;;
  }

  measure: count_clientes {
    type: count_distinct
    drill_fields: []
    sql: ${lkp_clientes_completa.cliente_cobis} ;;
  }


}
