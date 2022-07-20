view: lkp_cuentas {
  sql_table_name: `LOOKER.lkp_cuentas`
    ;;

  dimension: abono_key {
    type: number
    sql: ${TABLE}.Abono_Key ;;
  }

  dimension: actividad_key {
    type: number
    sql: ${TABLE}.Actividad_Key ;;
  }

  dimension: acuerdo_key {
    type: number
    sql: ${TABLE}.Acuerdo_Key ;;
  }

  dimension: banca_key {
    type: number
    sql: ${TABLE}.Banca_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: categoria_cuenta_key {
    type: number
    sql: ${TABLE}.Categoria_Cuenta_Key ;;
  }

  dimension: causa_cierre_key {
    type: number
    sql: ${TABLE}.Causa_Cierre_Key ;;
  }

  dimension: cbu {
    type: number
    sql: ${TABLE}.CBU ;;
  }

  dimension: certificado {
    type: number
    sql: ${TABLE}.Certificado ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.Codigo_Cliente ;;
  }

  dimension: codigo_cuenta {
    type: number
    sql: ${TABLE}.Codigo_Cuenta ;;
  }

  dimension: compania_seguro_vida_key {
    type: number
    sql: ${TABLE}.COMPANIA_SEGURO_VIDA_KEY ;;
  }

  dimension: cuenta_key {
    type: number
    sql: ${TABLE}.Cuenta_Key ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension_group: fecha_alta {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Fecha_Alta ;;
  }

  dimension_group: fecha_baja {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Fecha_Baja ;;
  }

  dimension_group: fecha_ultimo_movimiento {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Fecha_Ultimo_Movimiento ;;
  }

  dimension: fecha_vencimiento {
    type: string
    sql: ${TABLE}.Fecha_Vencimiento ;;
  }

  dimension: inactividad_key {
    type: number
    sql: ${TABLE}.Inactividad_Key ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: plazo {
    type: string
    sql: ${TABLE}.Plazo ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  dimension: residencia_key {
    type: number
    sql: ${TABLE}.Residencia_Key ;;
  }

  dimension: restringido {
    type: string
    sql: ${TABLE}.RESTRINGIDO ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: sucursal_cuenta_key {
    type: number
    sql: ${TABLE}.Sucursal_Cuenta_Key ;;
  }

  dimension: tasa {
    type: string
    sql: ${TABLE}.Tasa ;;
  }

  dimension: tipo_cartera_key {
    type: number
    sql: ${TABLE}.Tipo_Cartera_Key ;;
  }

  dimension: tipo_cuenta_key {
    type: number
    sql: ${TABLE}.Tipo_Cuenta_Key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
