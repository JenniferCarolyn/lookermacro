view: lkp_clientes_completa {
  sql_table_name: `LOOKER.lkp_clientes_completa`
    ;;

  dimension: actividad_economica_key {
    type: number
    sql: ${TABLE}.Actividad_Economica_Key ;;
  }

  dimension: actividad_extendida_key {
    type: number
    sql: ${TABLE}.Actividad_Extendida_Key ;;
  }

  dimension: actividad_key {
    type: number
    sql: ${TABLE}.Actividad_Key ;;
  }

  dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Key ;;
  }

  dimension: banca_key {
    type: number
    sql: ${TABLE}.Banca_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: canal_captacion_key {
    type: number
    sql: ${TABLE}.Canal_Captacion_Key ;;
  }

  dimension: cantidad_empleados {
    type: number
    sql: ${TABLE}.Cantidad_Empleados ;;
  }

  dimension: categoria_selecta {
    type: string
    sql: ${TABLE}.Categoria_Selecta ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.Centralizado ;;
  }

  dimension: ciudad_nacimiento {
    type: string
    sql: ${TABLE}.Ciudad_nacimiento ;;
  }

  dimension: clasificacion_especial_key {
    type: number
    sql: ${TABLE}.Clasificacion_Especial_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.Codigo_Cliente ;;
  }

  dimension: condicion_mipyme_key {
    type: number
    sql: ${TABLE}.Condicion_Mipyme_Key ;;
  }

  dimension: estado_civil {
    type: string
    sql: ${TABLE}.Estado_Civil ;;
  }

  dimension: eventual {
    type: number
    sql: ${TABLE}.Eventual ;;
  }

  dimension_group: fecha_depuracion_cobis {
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
    sql: ${TABLE}.Fecha_Depuracion_Cobis ;;
  }

  dimension_group: fecha_ingreso {
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
    sql: ${TABLE}.Fecha_Ingreso ;;
  }

  dimension_group: fecha_nacimiento {
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
    sql: ${TABLE}.Fecha_Nacimiento ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.Localidad ;;
  }

  dimension: marca_pep {
    type: string
    sql: ${TABLE}.Marca_PEP ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: nro_doc_tributario {
    type: number
    sql: ${TABLE}.Nro_Doc_Tributario ;;
  }

  dimension: nro_documento {
    type: number
    sql: ${TABLE}.Nro_Documento ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }

  dimension: pais_nacimiento {
    type: string
    sql: ${TABLE}.Pais_nacimiento ;;
  }

  dimension: productos_activos {
    type: string
    sql: ${TABLE}.Productos_activos ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.Provincia ;;
  }

  dimension: provincia_nacimiento {
    type: string
    sql: ${TABLE}.Provincia_Nacimiento ;;
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

  dimension: sexo {
    type: string
    sql: ${TABLE}.Sexo ;;
  }

  dimension: situacion_deudor_banco_key {
    type: number
    sql: ${TABLE}.Situacion_Deudor_Banco_Key ;;
  }

  dimension: situacion_deudor_bcra_key {
    type: number
    sql: ${TABLE}.Situacion_Deudor_BCRA_Key ;;
  }

  dimension: situacion_tributaria_key {
    type: number
    sql: ${TABLE}.Situacion_Tributaria_Key ;;
  }

  dimension: sucursal_captacion_key {
    type: number
    sql: ${TABLE}.Sucursal_captacion_Key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }

  dimension: tipo_cartera_key {
    type: number
    sql: ${TABLE}.Tipo_Cartera_Key ;;
  }

  dimension: tipo_doc_tributario {
    type: number
    sql: ${TABLE}.Tipo_Doc_Tributario ;;
  }

  dimension: tipo_documento {
    type: number
    sql: ${TABLE}.Tipo_Documento ;;
  }

  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.Tipo_persona ;;
  }

  dimension: tipo_persona_key {
    type: number
    sql: ${TABLE}.Tipo_persona_Key ;;
  }

  dimension: tipo_sucursal_asignada_key {
    type: number
    sql: ${TABLE}.Tipo_Sucursal_Asignada_Key ;;
  }

  dimension: tipo_titular_key {
    type: number
    sql: ${TABLE}.Tipo_Titular_Key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
