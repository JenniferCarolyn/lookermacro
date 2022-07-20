connection: "capacitacion_looker_data"

# include all the views
include: "/views/**/*.view"

datagroup: bancomacro_prueba_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bancomacro_prueba_default_datagroup

explore: del_activas_tc_empresas {
  from: fct_cartera_activa
  join: lkp_fechas {
    type: left_outer
    sql_on: ${del_activas_tc_empresas.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: left_outer
    sql_on: ${del_activas_tc_empresas.cuenta_key}=${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: left_outer
    sql_on: ${del_activas_tc_empresas.cliente_key}=${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: left_outer
    sql_on: ${del_activas_tc_empresas.producto_key}=${lkp_productos.producto_key} ;;
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
