view: fct_cartera_activa {
  sql_table_name: `LOOKER.fct_cartera_activa`
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

  dimension: ajcap_cien {
    type: number
    sql: ${TABLE}.Ajcap_Cien ;;
  }

  dimension: ajcap_cien_cg {
    type: number
    sql: ${TABLE}.Ajcap_Cien_Cg ;;
  }

  dimension: ajcap_cien_sg {
    type: number
    sql: ${TABLE}.Ajcap_Cien_Sg ;;
  }

  dimension: ajuste_av_gar_a {
    type: number
    sql: ${TABLE}.Ajuste_Av_Gar_A ;;
  }

  dimension: ajuste_av_gar_b {
    type: number
    sql: ${TABLE}.Ajuste_Av_Gar_B ;;
  }

  dimension: ajuste_av_sin_gar {
    type: number
    sql: ${TABLE}.Ajuste_Av_Sin_Gar ;;
  }

  dimension: ajuste_v_gar_a {
    type: number
    sql: ${TABLE}.Ajuste_V_Gar_A ;;
  }

  dimension: ajuste_v_gar_b {
    type: number
    sql: ${TABLE}.Ajuste_V_Gar_B ;;
  }

  dimension: ajuste_v_sin_gar {
    type: number
    sql: ${TABLE}.Ajuste_V_Sin_Gar ;;
  }

  dimension: archivo_id {
    type: number
    sql: ${TABLE}.ArchivoId ;;
  }

  dimension: banca_key {
    type: number
    sql: ${TABLE}.Banca_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: bloqueo_key {
    type: number
    sql: ${TABLE}.Bloqueo_Key ;;
  }

  dimension: calif_act {
    type: string
    sql: ${TABLE}.Calif_Act ;;
  }

  dimension: calif_ant {
    type: string
    sql: ${TABLE}.Calif_Ant ;;
  }

  dimension: cantidad_cuentas {
    type: number
    sql: ${TABLE}.Cantidad_Cuentas ;;
  }

  dimension: capital_av_gar_a {
    type: number
    sql: ${TABLE}.Capital_Av_Gar_A ;;
  }

  dimension: capital_av_gar_b {
    type: number
    sql: ${TABLE}.Capital_Av_Gar_B ;;
  }

  dimension: capital_av_sin_gar {
    type: number
    sql: ${TABLE}.Capital_Av_Sin_Gar ;;
  }

  dimension: capital_v_gar_a {
    type: number
    sql: ${TABLE}.Capital_V_Gar_A ;;
  }

  dimension: capital_v_gar_b {
    type: number
    sql: ${TABLE}.Capital_V_Gar_B ;;
  }

  dimension: capital_v_sin_gar {
    type: number
    sql: ${TABLE}.Capital_V_Sin_Gar ;;
  }

  dimension: categoria_cuenta_key {
    type: number
    sql: ${TABLE}.Categoria_Cuenta_Key ;;
  }

  dimension: centralizado {
    type: string
    sql: ${TABLE}.Centralizado ;;
  }

  dimension: cien_cg {
    type: number
    sql: ${TABLE}.Cien_Cg ;;
  }

  dimension: cien_sg {
    type: number
    sql: ${TABLE}.Cien_Sg ;;
  }

  dimension: clas_autom {
    type: string
    sql: ${TABLE}.Clas_Autom ;;
  }

  dimension: clas_final {
    type: string
    sql: ${TABLE}.Clas_Final ;;
  }

  dimension: clasif_6 {
    type: string
    sql: ${TABLE}.Clasif_6 ;;
  }

  dimension: clasificacion_contable_key {
    type: number
    sql: ${TABLE}.Clasificacion_Contable_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: codigo_cesion {
    type: string
    sql: ${TABLE}.Codigo_Cesion ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.Cotizacion ;;
  }

  dimension: cuenta_key {
    type: number
    sql: ${TABLE}.Cuenta_Key ;;
  }

  dimension: dias_atraso_bcra {
    type: number
    sql: ${TABLE}.Dias_Atraso_Bcra ;;
  }

  dimension: dias_mora_key {
    type: number
    sql: ${TABLE}.Dias_Mora_Key ;;
  }

  dimension: dias_sobregiro {
    type: number
    sql: ${TABLE}.Dias_Sobregiro ;;
  }

  dimension: dif_pv_24 {
    type: number
    sql: ${TABLE}.Dif_Pv_24 ;;
  }

  dimension: dif_pv_60 {
    type: number
    sql: ${TABLE}.Dif_Pv_60 ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: estado_cuenta_key {
    type: number
    sql: ${TABLE}.Estado_Cuenta_Key ;;
  }

  dimension: estado_deuda_key {
    type: number
    sql: ${TABLE}.Estado_Deuda_Key ;;
  }

  dimension_group: fech_vto_div {
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
    sql: ${TABLE}.Fech_Vto_Div ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: fecha_vencimiento_key {
    type: number
    sql: ${TABLE}.Fecha_Vencimiento_Key ;;
  }

  dimension: inactividad_key {
    type: number
    sql: ${TABLE}.Inactividad_Key ;;
  }

  dimension: int_cien {
    type: number
    sql: ${TABLE}.Int_Cien ;;
  }

  dimension: intereses_av_gar_a {
    type: number
    sql: ${TABLE}.Intereses_Av_Gar_A ;;
  }

  dimension: intereses_av_gar_b {
    type: number
    sql: ${TABLE}.Intereses_Av_Gar_B ;;
  }

  dimension: intereses_av_sin_gar {
    type: number
    sql: ${TABLE}.Intereses_Av_Sin_Gar ;;
  }

  dimension: intereses_v_gar_a {
    type: number
    sql: ${TABLE}.Intereses_V_Gar_A ;;
  }

  dimension: intereses_v_gar_b {
    type: number
    sql: ${TABLE}.Intereses_V_Gar_B ;;
  }

  dimension: intereses_v_sin_gar {
    type: number
    sql: ${TABLE}.Intereses_V_Sin_Gar ;;
  }

  dimension: mercado_key {
    type: number
    sql: ${TABLE}.Mercado_Key ;;
  }

  dimension: nueva_asist {
    type: string
    sql: ${TABLE}.Nueva_Asist ;;
  }

  dimension: num_banco {
    type: string
    sql: ${TABLE}.Num_Banco ;;
  }

  dimension: ocif_av_gar_a {
    type: number
    sql: ${TABLE}.Ocif_Av_Gar_A ;;
  }

  dimension: ocif_av_gar_b {
    type: number
    sql: ${TABLE}.Ocif_Av_Gar_B ;;
  }

  dimension: ocif_av_sin_gar {
    type: number
    sql: ${TABLE}.Ocif_Av_Sin_Gar ;;
  }

  dimension: ocif_v_gar_b {
    type: number
    sql: ${TABLE}.Ocif_V_Gar_B ;;
  }

  dimension: ocif_v_sin_gar {
    type: number
    sql: ${TABLE}.Ocif_V_Sin_Gar ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: operacion {
    type: number
    sql: ${TABLE}.Operacion ;;
  }

  dimension: prev_ajcap_cien {
    type: number
    sql: ${TABLE}.Prev_Ajcap_Cien ;;
  }

  dimension: prev_ajuste_av_gar_a {
    type: number
    sql: ${TABLE}.Prev_Ajuste_Av_Gar_A ;;
  }

  dimension: prev_ajuste_av_gar_b {
    type: number
    sql: ${TABLE}.Prev_Ajuste_Av_Gar_B ;;
  }

  dimension: prev_ajuste_av_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Ajuste_Av_Sin_Gar ;;
  }

  dimension: prev_ajuste_v_gar_a {
    type: number
    sql: ${TABLE}.Prev_Ajuste_V_Gar_A ;;
  }

  dimension: prev_ajuste_v_gar_b {
    type: number
    sql: ${TABLE}.Prev_Ajuste_V_Gar_B ;;
  }

  dimension: prev_ajuste_v_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Ajuste_V_Sin_Gar ;;
  }

  dimension: prev_ant {
    type: number
    sql: ${TABLE}.Prev_Ant ;;
  }

  dimension: prev_capital_av_gar_a {
    type: number
    sql: ${TABLE}.Prev_Capital_Av_Gar_A ;;
  }

  dimension: prev_capital_av_gar_b {
    type: number
    sql: ${TABLE}.Prev_Capital_Av_Gar_B ;;
  }

  dimension: prev_capital_av_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Capital_Av_Sin_Gar ;;
  }

  dimension: prev_capital_v_gar_a {
    type: number
    sql: ${TABLE}.Prev_Capital_V_Gar_A ;;
  }

  dimension: prev_capital_v_gar_b {
    type: number
    sql: ${TABLE}.Prev_Capital_V_Gar_B ;;
  }

  dimension: prev_capital_v_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Capital_V_Sin_Gar ;;
  }

  dimension: prev_int_cien {
    type: number
    sql: ${TABLE}.Prev_Int_Cien ;;
  }

  dimension: prev_intereses_av_gar_a {
    type: number
    sql: ${TABLE}.Prev_Intereses_Av_Gar_A ;;
  }

  dimension: prev_intereses_av_gar_b {
    type: number
    sql: ${TABLE}.Prev_Intereses_Av_Gar_B ;;
  }

  dimension: prev_intereses_av_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Intereses_Av_Sin_Gar ;;
  }

  dimension: prev_intereses_v_gar_a {
    type: number
    sql: ${TABLE}.Prev_Intereses_V_Gar_A ;;
  }

  dimension: prev_intereses_v_gar_b {
    type: number
    sql: ${TABLE}.Prev_Intereses_V_Gar_B ;;
  }

  dimension: prev_intereses_v_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Intereses_V_Sin_Gar ;;
  }

  dimension: prev_ocif_av_gar_a {
    type: number
    sql: ${TABLE}.Prev_Ocif_Av_Gar_A ;;
  }

  dimension: prev_ocif_av_gar_b {
    type: number
    sql: ${TABLE}.Prev_Ocif_Av_Gar_B ;;
  }

  dimension: prev_ocif_av_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Ocif_Av_Sin_Gar ;;
  }

  dimension: prev_ocif_v_gar_b {
    type: number
    sql: ${TABLE}.Prev_Ocif_V_Gar_B ;;
  }

  dimension: prev_ocif_v_sin_gar {
    type: number
    sql: ${TABLE}.Prev_Ocif_V_Sin_Gar ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  dimension: residencia_key {
    type: number
    sql: ${TABLE}.Residencia_Key ;;
  }

  dimension: saldo_deuda {
    type: number
    sql: ${TABLE}.Saldo_Deuda ;;
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

  dimension: sucursal_cuenta_key {
    type: number
    sql: ${TABLE}.Sucursal_Cuenta_Key ;;
  }

  dimension: tipo_cartera_key {
    type: number
    sql: ${TABLE}.Tipo_Cartera_Key ;;
  }

  dimension: tipo_cuenta_key {
    type: number
    sql: ${TABLE}.Tipo_Cuenta_Key ;;
  }

  dimension: tipo_persona_key {
    type: number
    sql: ${TABLE}.Tipo_Persona_Key ;;
  }

  dimension: tramite {
    type: string
    sql: ${TABLE}.Tramite ;;
  }

  dimension: unidad_cobro_key {
    type: number
    sql: ${TABLE}.unidad_cobro_key ;;
  }

  dimension: unidad_recupero_key {
    type: number
    sql: ${TABLE}.unidad_recupero_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
