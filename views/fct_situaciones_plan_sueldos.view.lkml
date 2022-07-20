view: fct_situaciones_plan_sueldos {
  sql_table_name: `LOOKER.fct_situaciones_plan_sueldos`
    ;;

  dimension: acreditacion_ajuste_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Ajuste_Mes ;;
  }

  dimension: acreditacion_ajuste_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Ajuste_Mes_Ant ;;
  }

  dimension: acreditacion_ajuste_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Ajuste_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_concentrador_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Concentrador_Mes ;;
  }

  dimension: acreditacion_concentrador_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Concentrador_Mes_Ant ;;
  }

  dimension: acreditacion_concentrador_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Concentrador_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_datanet_honorarios_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Datanet_Honorarios_Mes ;;
  }

  dimension: acreditacion_datanet_honorarios_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Datanet_Honorarios_Mes_Ant ;;
  }

  dimension: acreditacion_datanet_honorarios_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Datanet_Honorarios_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_datanet_salarial_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Datanet_Salarial_Mes ;;
  }

  dimension: acreditacion_datanet_salarial_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Datanet_Salarial_Mes_Ant ;;
  }

  dimension: acreditacion_datanet_salarial_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Datanet_Salarial_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_honorarios_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Honorarios_Mes ;;
  }

  dimension: acreditacion_honorarios_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Honorarios_Mes_Ant ;;
  }

  dimension: acreditacion_honorarios_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Honorarios_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_manual_1001_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Manual_1001_Mes ;;
  }

  dimension: acreditacion_manual_1001_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Manual_1001_Mes_Ant ;;
  }

  dimension: acreditacion_manual_1001_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Manual_1001_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_manual_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Manual_Mes ;;
  }

  dimension: acreditacion_manual_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Manual_Mes_Ant ;;
  }

  dimension: acreditacion_manual_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Manual_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_salarial_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Salarial_Mes ;;
  }

  dimension: acreditacion_salarial_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Salarial_Mes_Ant ;;
  }

  dimension: acreditacion_salarial_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Salarial_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_total_mes {
    type: number
    sql: ${TABLE}.Acreditacion_Total_Mes ;;
  }

  dimension: acreditacion_total_mes_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Total_Mes_Ant ;;
  }

  dimension: acreditacion_total_mes_ant_ant {
    type: number
    sql: ${TABLE}.Acreditacion_Total_Mes_Ant_Ant ;;
  }

  dimension: acreditacion_total_mes_sin_ajuste {
    type: number
    sql: ${TABLE}.Acreditacion_Total_Mes_Sin_Ajuste ;;
  }

  dimension: banca_comite_capita_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Capita_Key ;;
  }

  dimension: banca_comite_convenio_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Convenio_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: calificacion {
    type: string
    sql: ${TABLE}.Calificacion ;;
  }

  dimension: cantidad_capitas {
    type: number
    sql: ${TABLE}.Cantidad_Capitas ;;
  }

  dimension: capita_key {
    type: number
    sql: ${TABLE}.Capita_Key ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.Centralizado ;;
  }

  dimension: con_acreditacion {
    type: string
    sql: ${TABLE}.Con_Acreditacion ;;
  }

  dimension: estado_monitor_ps_key {
    type: number
    sql: ${TABLE}.Estado_Monitor_PS_Key ;;
  }

  dimension: estado_monitor_ps_sin_ajuste_key {
    type: number
    sql: ${TABLE}.Estado_Monitor_PS_Sin_Ajuste_Key ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: fecha_version_estado_key {
    type: number
    sql: ${TABLE}.Fecha_Version_Estado_Key ;;
  }

  dimension: oficial_empleador_key {
    type: number
    sql: ${TABLE}.Oficial_Empleador_Key ;;
  }

  dimension: piso {
    type: number
    sql: ${TABLE}.Piso ;;
  }

  dimension: saldo_acreditacion_promedio_12 {
    type: number
    sql: ${TABLE}.Saldo_Acreditacion_Promedio_12 ;;
  }

  dimension: saldo_acreditacion_promedio_3 {
    type: number
    sql: ${TABLE}.Saldo_Acreditacion_Promedio_3 ;;
  }

  dimension: saldo_acreditacion_promedio_6 {
    type: number
    sql: ${TABLE}.Saldo_Acreditacion_Promedio_6 ;;
  }

  dimension: secuencia_ps_key {
    type: number
    sql: ${TABLE}.Secuencia_PS_Key ;;
  }

  dimension: sucursal_oficial_key {
    type: number
    sql: ${TABLE}.Sucursal_Oficial_Key ;;
  }

  dimension: sucursal_radicacion_capita_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Capita_Key ;;
  }

  dimension: sucursal_radicacion_convenio_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Convenio_Key ;;
  }

  dimension: vigente {
    type: string
    sql: ${TABLE}.Vigente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
