connection: "capacitacion_looker_data"

# include all the views
include: "/views/**/*.view"

datagroup: macro_datagroup {
  sql_trigger: SELECT SUM(Saldo) FROM agr_saldos_fci;;
  max_cache_age: "1 hour"
}

persist_with: macro_datagroup

# CARTERA ACTIVA (TC)
explore: fct_cartera_activa {
  label: "Cartera Activa (TC)"
  sql_always_where: ${lkp_bancas.banca} in ('Agro','Corporativa','Megra','Empresas', 'Gobierno') and ${banco_key} = 95   ;;
 # POSIBLES FILTROS sql_always_where: ${lkp_fechas.periodo} >= "2021-01" AND ${lkp_fechas.periodo} = 'S' ;;
  join: lkp_fechas {
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
    type: left_outer
    sql_on: ${fct_cartera_activa.cliente_key}=${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    fields: [lkp_productos.producto, lkp_productos.familia_productos]
    type: left_outer
    sql_on: ${fct_cartera_activa.producto_key}=${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    fields: [lkp_bancas.banca_key, lkp_bancas.banca, lkp_bancas.segmento, lkp_bancas.subsegmento,lkp_bancas.categoria]
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
    fields: [lkp_sucursales_radicacion.division, lkp_sucursales_radicacion.region, lkp_sucursales_radicacion.sucursal, lkp_sucursales_radicacion.provincia, lkp_sucursales_radicacion.localidad]
    type: left_outer
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: del_pasivas_empresas_vw {
    type: left_outer
    sql_on: ${fct_cartera_activa.cliente_key} = ${del_pasivas_empresas_vw.cliente_key} ;;
    relationship: many_to_one
  }
  join: agr_situacion_cartera {
    type: left_outer
    sql_on: ${fct_cartera_activa.cliente_key} = ${agr_situacion_cartera.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: left_outer
    sql_on: ${fct_cartera_activa.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_periodos_transformacion {
    type: left_outer
    sql_on: ${fct_cartera_activa.fecha_key} = ${lkp_periodos_transformacion.fecha_key} ;;
    relationship: many_to_one
  }
}
explore: agr_promedios_pasivos {
  label: "Cartera Pasiva sin PDT"
  #sql_always_where: ${lkp_bancas.banca_key}= 95 and ${lkp_bancas.banca} in ("Megra", "Corporativa", "Empresas", "Agro") ;;
  join: lkp_fechas {
    type: left_outer
    sql_on: ${agr_promedios_pasivos.fecha_key}=${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    fields: [lkp_clientes_completa.count]
    type: left_outer
    sql_on: ${agr_promedios_pasivos.cliente_key}=${lkp_clientes_completa.cliente_key} ;;
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
  join:  agr_saldos_fci{
    type: full_outer
    sql_on: ${agr_promedios_pasivos.cliente_key}=${agr_saldos_fci.cliente_key};;
    relationship: many_to_one
  }
  join: lkp_productos {
    # sql_where: ${lkp_productos.cartera}="Pasiva" and ${lkp_productos.producto} in ("Cuentas a la vista", "Cuentas a plazo", "Otras Cuentas") and
    #           ${lkp_productos.familia_productos} not in ("Cedros", "Oblig. por Canje (Boden)") ;;
    type: left_outer
    sql_on: ${agr_promedios_pasivos.producto_key}=${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
}

explore: del_pasivas_empresas_vw {
  label: "Cartera Pasiva"
  join: lkp_fechas {
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    fields: [lkp_bancas.banca, lkp_bancas.segmento, lkp_bancas.subsegmento,lkp_bancas.categoria]
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_comite_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    fields: [lkp_sucursales_radicacion.division, lkp_sucursales_radicacion.region, lkp_sucursales_radicacion.sucursal, lkp_sucursales_radicacion.provincia, lkp_sucursales_radicacion.localidad]
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
  join: lkp_especies {
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
    }
  join: lkp_periodos_transformacion {
    type: left_outer
    sql_on: ${del_pasivas_empresas_vw.fecha_key} = ${lkp_periodos_transformacion.fecha_key} ;;
    relationship: many_to_one
  }
}

explore: agr_situacion_cartera   {
  sql_always_where: ${banco_key} = 95 and ${lkp_bancas.banca} in ('Megra','Corporativa','Agro','Empresas', 'Gobierno') and ${lkp_estado_deuda.estado_deuda} in('Congelada','Normal','Vencida')
                    and ${lkp_productos.producto} != "Tarjetas de Crédito" and ${lkp_productos.familia_productos} != "Tarjetas de Crédito" and ${origen} not like 'TC%';;
  label: "Cartera Activa sin TC"
  join: lkp_fechas {
    type: left_outer
    sql_on: ${agr_situacion_cartera.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: left_outer
    sql_on: ${agr_situacion_cartera.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    fields: [lkp_bancas.banca, lkp_bancas.segmento, lkp_bancas.subsegmento,lkp_bancas.categoria]
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_comite_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuentas {
    fields: [lkp_oficiales_cuentas.oficial_cuenta]
    type: left_outer
    sql_on: ${lkp_clientes_completa.oficial_cuenta_key} = ${lkp_oficiales_cuentas.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    #case
    fields: [lkp_productos.familia_productos, lkp_productos.clasificacion_producto]
    type: left_outer
    sql_on: ${agr_situacion_cartera.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_estado_deuda {
    type: left_outer
    sql_on: ${agr_situacion_cartera.estado_deuda_key} = ${lkp_estado_deuda.estado_deuda_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    fields: [lkp_sucursales_radicacion.division, lkp_sucursales_radicacion.region]
    type: left_outer
    sql_on: ${agr_situacion_cartera.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: del_pasivas_empresas_vw {
    type: left_outer
    sql_on: ${agr_situacion_cartera.cliente_key} = ${del_pasivas_empresas_vw.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: left_outer
    sql_on: ${agr_situacion_cartera.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
    }
  join: lkp_periodos_transformacion {
    type: left_outer
    sql_on: ${agr_situacion_cartera.fecha_key} = ${lkp_periodos_transformacion.fecha_key} ;;
    relationship: many_to_one
  }
}

explore: empresas {}
