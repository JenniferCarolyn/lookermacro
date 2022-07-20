view: lkp_agrupacion_comisiones {
  sql_table_name: `LOOKER.lkp_agrupacion_comisiones`
    ;;

  dimension: agrupacion_comisiones_key {
    type: number
    sql: ${TABLE}.Agrupacion_Comisiones_Key ;;
  }

  dimension: agrupacion_comisiones_source {
    type: string
    sql: ${TABLE}.Agrupacion_Comisiones_Source ;;
  }

  dimension: agrupacion_productos {
    type: string
    sql: ${TABLE}.Agrupacion_Productos ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: causal {
    type: number
    sql: ${TABLE}.Causal ;;
  }

  dimension: concepto_comisionable {
    type: string
    sql: ${TABLE}.Concepto_Comisionable ;;
  }

  dimension: considera_paquete {
    type: string
    sql: ${TABLE}.Considera_Paquete ;;
  }

  dimension: cuenta_contable {
    type: string
    sql: ${TABLE}.Cuenta_Contable ;;
  }

  dimension: fecha_alta {
    type: string
    sql: ${TABLE}.Fecha_Alta ;;
  }

  dimension: producto_comisionable {
    type: string
    sql: ${TABLE}.Producto_Comisionable ;;
  }

  dimension: producto_seguro_asociado {
    type: string
    sql: ${TABLE}.Producto_Seguro_Asociado ;;
  }

  dimension: sub_producto_comisionable {
    type: string
    sql: ${TABLE}.Sub_Producto_Comisionable ;;
  }

  dimension: tipo_comision {
    type: string
    sql: ${TABLE}.Tipo_Comision ;;
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
