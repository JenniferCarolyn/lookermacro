# Se puede trabajar con una PDT en la view

view: del_activas_tc_empresas_vw {
  sql_table_name: `LOOKER.fct_cartera_activa` ;;
  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
}
  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

   dimension: tipo_persona_key {
    type: number
    sql: ${TABLE}.Tipo_persona_Key ;;
  }

   dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }
   dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }
  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }
  dimension: clasificacion_producto {
    type: string
    sql: ${TABLE}.Clasificacion_Producto ;;
  }
  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: oficial_cuenta {
    type: max
    sql: ${TABLE}.Oficial_Cuenta ;;
  }
   measure: identificacion_usuario {
    type: max
    sql: ${TABLE}.Identificacion_Usuario ;;
  }

  measure: saldo {
   type: sum
   sql: ${TABLE}.Saldo ;;
    }
set: detail {
  fields: [
    fecha_key,
    cliente_key,
    tipo_persona_key,
    banca_comite_key,
    sucursal_radicacion_key,
    sector_key,
    oficial_cuenta_key,
    oficial_cuenta,
    identificacion_usuario,
    clasificacion_producto,
    especie_key,
    saldo
  ]
}
}
