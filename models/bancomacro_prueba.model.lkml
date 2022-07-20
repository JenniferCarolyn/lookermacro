connection: "capacitacion_looker_data"

# include all the views
include: "/views/**/*.view"

datagroup: bancomacro_prueba_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bancomacro_prueba_default_datagroup

explore: fct_cartera_activa {
  sql_always_where: ${lkp_fechas.periodo} >= '2019-01' and ${lkp_fechas.periodo} = 'S' and ${lkp_bancas.banca} in ('Agro','Corporativa','Megra','Empresas')
                    and ${lkp_productos.producto} = 'Tarjetas de Crédito' and ${banco_key} = 95  ;;
  join: lkp_fechas {
    type: left_outer
    sql_on: ${fct_cartera_activa.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
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
    type: left_outer
    sql_on: ${fct_cartera_activa.producto_key}=${lkp_productos.producto_key} ;;
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
}
explore: cartera_activa_pdt {}

explore: del_activas_tc_empresas_vw {}
