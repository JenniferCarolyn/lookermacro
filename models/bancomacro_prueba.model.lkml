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
  label: "Cartera Activa (TC)"
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
    fields: [lkp_clientes_completa.nro_doc_tributario, lkp_clientes_completa.codigo_cliente, lkp_clientes_completa.nombre, lkp_clientes_completa.tipo_persona,lkp_clientes_completa.banca_comite_key]
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
    fields: [lkp_sucursales_radicacion.division, lkp_sucursales_radicacion.region, lkp_sucursales_radicacion.sucursal]
    type: left_outer
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
explore: agr_saldos_fci {
  label: "Cartera Pasiva sin PDT"
  sql_always_where: ${lkp_bancas.banca_key}="95" and ${lkp_bancas.banca} in ("Megra", "Corporativa", "Empresas", "Agro") and ${lkp_fechas.periodo} >= "2019-01" ;;
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
  join:  agr_promedios_pasivos{
    #sql_where: ${lkp_productos.cartera}="Pasiva" and ${lkp_productos.producto} in ("Cuentas a la vista", "Cuentas a plazo", "Otras Cuentas")
     #           ${lkp_productos.familia_productos} not in ("Cedros", "Oblig. por Canje (Boden)") ;;
    type: left_outer
    sql_on: ${agr_saldos_fci.fecha_key}=${agr_promedios_pasivos.fecha_key};;
    relationship: many_to_one
  }
  join: lkp_productos {
    from: agr_promedios_pasivos
    type: left_outer
    sql_on: ${lkp_productos.producto_key}=${agr_promedios_pasivos.producto_key} ;;
    relationship: many_to_one
  }
}

explore: del_pasivas_empresas_vw {
  label: "Cartera Pasiva"
  join: lkp_fechas {
    fields: [lkp_fechas.periodo]
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    fields: [lkp_clientes_completa.nro_doc_tributario, lkp_clientes_completa.codigo_cliente, lkp_clientes_completa.nombre, lkp_clientes_completa.tipo_persona, lkp_clientes_completa.banca_comite_key]
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    fields: [lkp_bancas.banca, lkp_bancas.segmento, lkp_bancas.subsegmento]
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_comite_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    fields: [lkp_sucursales_radicacion.division, lkp_sucursales_radicacion.region, lkp_sucursales_radicacion.sucursal]
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuentas {
    fields: [lkp_oficiales_cuentas.oficial_cuenta]
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.oficial_cuenta_key} = ${lkp_oficiales_cuentas.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
}
