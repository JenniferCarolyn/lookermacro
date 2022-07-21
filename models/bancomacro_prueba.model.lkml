connection: "capacitacion_looker_data"

# include all the views
include: "/views/**/*.view"

datagroup: bancomacro_prueba_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bancomacro_prueba_default_datagroup

# CARTERA ACTIVA (TC)
explore: fct_cartera_activa {
 # POSIBLES FILTROS sql_always_where: ${lkp_fechas.periodo} >= '2019-01' and ${lkp_fechas.periodo} = 'S' and ${lkp_bancas.banca} in ('Agro','Corporativa','Megra','Empresas')
 #                                    and ${lkp_productos.producto} = 'Tarjetas de Crédito' and ${banco_key} = 95   ;;
 # POSIBLES FILTROS sql_always_where: ${lkp_fechas.periodo} >= "2021-01" AND ${lkp_fechas.periodo} = 'S' ;;
  join: lkp_fechas {
    fields: [lkp_fechas.periodo]
    type: left_outer
    sql_on: ${fct_cartera_activa.fecha_key} = ${lkp_fechas.fecha_key};;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    fields: [lkp_cuentas.cuenta_key]
    type: left_outer
    sql_on: ${fct_cartera_activa.cuenta_key}=${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    fields: [lkp_clientes_completa.nro_doc_tributario, lkp_clientes_completa.codigo_cliente, lkp_clientes_completa.nombre]
    type: left_outer
    sql_on: ${fct_cartera_activa.cliente_key}=${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    fields: [lkp_productos.producto]
    type: left_outer
    sql_on: ${fct_cartera_activa.producto_key}=${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    fields: [lkp_bancas.banca_key, lkp_bancas.banca, lkp_bancas.segmento, lkp_bancas.subsegmento]
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_comite_key}=${lkp_bancas.banca_key};;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuentas {
    fields: [lkp_oficiales_cuentas.oficial_cuenta]
    type: left_outer
    sql_on: ${lkp_clientes_completa.oficial_cuenta_key}=${lkp_oficiales_cuentas.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    fields: [lkp_sucursales_radicacion.division, lkp_sucursales_radicacion.region]
    type: left_outer
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}

explore: agr_saldos_fci {
  join: lkp_fechas {
    type: left_outer
    sql_on: ${agr_saldos_fci.fecha_key}=${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: left_outer
    sql_on: ${lkp_clientes_completa.cliente_key}=${agr_saldos_fci.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_comite_key}=${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuentas {
    type: left_outer
    sql_on: ${lkp_clientes_completa.oficial_cuenta_key}=${lkp_oficiales_cuentas.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: agr_promedios_pasivos {
    from: lkp_fechas
    type: left_outer
    sql_on: ${lkp_fechas.fecha_key}=${agr_promedios_pasivos.fecha_key} ;;
    relationship: many_to_one

  }
}
explore: del_activas_tc_empresas_vw {}
