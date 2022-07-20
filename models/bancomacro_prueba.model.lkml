connection: "capacitacion_looker_data"

# include all the views
include: "/views/**/*.view"

datagroup: bancomacro_prueba_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bancomacro_prueba_default_datagroup

explore: agr_promedios_pasivos {}

explore: fct_cartera_activa {}

explore: fct_detalle_comisiones {}

explore: agr_situacion_cartera {}

explore: fct_situaciones_plan_sueldos {}

explore: lkp_bancas {}

explore: lkp_agrupacion_comisiones {}

explore: agr_saldos_fci {}

explore: lkp_capitas_plan_sueldo {}

explore: lkp_clientes_completa {}

explore: lkp_cuentas {}

explore: lkp_estados_ps {}

explore: lkp_causales {}

explore: lkp_estado_deuda {}

explore: lkp_fechas {}

explore: lkp_grupos_comisiones {}

explore: lkp_plan_cuentas {}

explore: lkp_oficiales_cuentas {}

explore: lkp_productos {}

explore: lkp_sucursales_radicacion {}
