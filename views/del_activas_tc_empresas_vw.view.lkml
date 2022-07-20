# Se puede trabajar con una PDT en la view

view: del_activas_tc_empresas_vw {
  dimension: Fecha_Key {
    type: number
    sql: ${fct_cartera_activa.Fecha_Key};;
  }
  dimension: Cliente_Key {
    type: number
    sql: ${fct_cartera_activa.Cliente_Key} ;;
  }
  dimension: Tipo_Persona_Key {
    type: number
    sql: ${lkp_clientes_completa.Tipo_Persona_Key} ;;
  }
  dimension: Banca_Comite_Key {
    type: number
    sql: ${lkp_clientes_completa.Banca_Comite_Key} ;;
  }
  dimension: Sucursal_Radicacion_Key {
    type: number
    sql: ${lkp_clientes_completa.Sucursal_Radicacion_Key} ;;
  }
  dimension: Sector_Key {
    type: number
    sql: ${fct_cartera_activa.Sector_Key} ;;
  }
  dimension: Oficial_Cuenta_Key {
    type: number
    sql: ${lkp_clientes_completa.Oficial_Cuenta_Key} ;;
  }
  dimension: Clasificacion_Producto {
    type: string
    sql: ${lkp_productos.Producto} ;;
  }
  dimension: Especie_Key {
    type: number
    sql: ${fct_cartera_activa.Especie_Key} ;;
  }
  measure: Count {
    type: count
  }
  measure: Oficial_Cuenta {
    type: max
    sql: ${lkp.oficiales_cuenta.Oficial_Cuenta} ;;
  }
  measure: Identificacion_Usuario {
    type: max
    sql: ${lkp_oficiales_cuenta.Identificacion_Usuario} ;;
  }
  measure: Saldo {
    type: sum
    sql: ${fct_cartera_activa.Saldo_deuda} ;;
  }

}
