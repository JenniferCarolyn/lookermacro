view: lkp_productos {
  sql_table_name: `LOOKER.lkp_productos`
    ;;

  dimension: cartera {
    type: string
    sql: ${TABLE}.Cartera ;;
  }

  dimension: familia_productos {
    type: string
    sql: ${TABLE}.Familia_Productos ;;
  }

  dimension: paquete {
    type: string
    sql: ${TABLE}.Paquete ;;
  }

  dimension: precancelable {
    type: string
    sql: ${TABLE}.Precancelable ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  dimension: producto_source {
    type: string
    sql: ${TABLE}.Producto_Source ;;
  }

  dimension: subproducto {
    type: string
    sql: ${TABLE}.Subproducto ;;
  }

  dimension: tipo_producto {
    type: string
    sql: ${TABLE}.Tipo_Producto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
