view: fct_detalle_comisiones {
  sql_table_name: `LOOKER.fct_detalle_comisiones`
    ;;

  dimension: abono_key {
    type: number
    sql: ${TABLE}.Abono_Key ;;
  }

  dimension: actividad_key {
    type: number
    sql: ${TABLE}.Actividad_Key ;;
  }

  dimension: agrupacion_comisiones_key {
    type: number
    sql: ${TABLE}.Agrupacion_Comisiones_Key ;;
  }

  dimension: banca_key {
    type: number
    sql: ${TABLE}.Banca_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: canal_key {
    type: number
    sql: ${TABLE}.Canal_Key ;;
  }

  dimension: categoria_cuenta_key {
    type: number
    sql: ${TABLE}.Categoria_Cuenta_Key ;;
  }

  dimension: causa_cierre_key {
    type: number
    sql: ${TABLE}.Causa_Cierre_Key ;;
  }

  dimension: causal {
    type: string
    sql: ${TABLE}.Causal ;;
  }

  dimension: causal_key {
    type: number
    sql: ${TABLE}.Causal_Key ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.Centralizado ;;
  }

  dimension: clasificacion_especial_key {
    type: number
    sql: ${TABLE}.Clasificacion_Especial_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: codigo_cuenta {
    type: string
    sql: ${TABLE}.Codigo_Cuenta ;;
  }

  dimension: convenio_key {
    type: number
    sql: ${TABLE}.Convenio_Key ;;
  }

  dimension: cuenta_contable {
    type: string
    sql: ${TABLE}.Cuenta_Contable ;;
  }

  dimension: cuenta_key {
    type: number
    sql: ${TABLE}.Cuenta_Key ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension_group: fecha_alta_cuenta {
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
    datatype: datetime
    sql: ${TABLE}.Fecha_Alta_Cuenta ;;
  }

  dimension_group: fecha_baja_cuenta {
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
    datatype: datetime
    sql: ${TABLE}.Fecha_Baja_Cuenta ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: flag_origen {
    type: number
    sql: ${TABLE}.Flag_Origen ;;
  }

  dimension: importe_transaccion {
    type: number
    sql: ${TABLE}.Importe_Transaccion ;;
  }

  dimension: inactividad_key {
    type: number
    sql: ${TABLE}.Inactividad_Key ;;
  }

  dimension: oficial_cliente_key {
    type: number
    sql: ${TABLE}.Oficial_Cliente_Key ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: paquete_key {
    type: number
    sql: ${TABLE}.Paquete_Key ;;
  }

  dimension: plan_cuentas_key {
    type: number
    sql: ${TABLE}.Plan_Cuentas_Key ;;
  }

  dimension: producto_bancario {
    type: number
    sql: ${TABLE}.Producto_Bancario ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  dimension: producto_seguro_asociado {
    type: string
    sql: ${TABLE}.Producto_Seguro_Asociado ;;
  }

  dimension: residencia_key {
    type: number
    sql: ${TABLE}.Residencia_Key ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_Key ;;
  }

  dimension: situacion_deudor_banco_key {
    type: number
    sql: ${TABLE}.Situacion_Deudor_Banco_Key ;;
  }

  dimension: situacion_deudor_bcra_key {
    type: number
    sql: ${TABLE}.Situacion_Deudor_Bcra_Key ;;
  }

  dimension: sucursal_captacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Captacion_Key ;;
  }

  dimension: sucursal_cuenta_key {
    type: number
    sql: ${TABLE}.Sucursal_Cuenta_Key ;;
  }

  dimension: sucursal_origen_key {
    type: number
    sql: ${TABLE}.Sucursal_Origen_Key ;;
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
