view: agr_situacion_cartera {
  sql_table_name: `LOOKER.agr_situacion_cartera`
    ;;

  dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.Banca_Comite_Key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.Banco_Key ;;
  }

  dimension: cliente_key {
    type: number
    sql: ${TABLE}.Cliente_Key ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.Especie_Key ;;
  }

  dimension: estado_deuda_key {
    type: number
    sql: ${TABLE}.Estado_Deuda_Key ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.Fecha_Key ;;
  }

  dimension: oficial_cuenta_key {
    type: number
    sql: ${TABLE}.Oficial_Cuenta_Key ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.Origen ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}.Saldo ;;
  }
  dimension: clasificacion_producto {
    case: {
      when: {
        sql: (${lkp_productos.familia_productos} in ("Cuenta Corriente") and ${lkp_productos.tipo_producto} not in ("Utilización Fondo Unificado"))
            or (${lkp_productos.familia_productos} in ("Adelantos en Cuenta Corriente", "Otros Adelantos"))
            or (${lkp_productos.producto_source} in ("089713", "FIMP089713") and ${lkp_productos.familia_productos} = "Comercio Exterior");;
        label: "Adelantos en Cuenta Corriente y Otros Adelantos"
      }
      when: {
        sql: (${lkp_productos.tipo_producto} not in ("A Determinar") and ${lkp_productos.producto_source} not in( '089713','FIMPO89713','DEUCOMEXD','DEUCOMEXP')
            and ${lkp_productos.familia_productos} = "Comercio Exterior") or (${lkp_productos.familia_productos} = "Cartera Documentada" and ${lkp_productos.tipo_producto} = "Sola Firma"
            and ${lkp_productos.producto_source} not like '(RI)%') ;;
        label: "Comercio Exterior"
      }
      when: {
        sql: ${lkp_productos.familia_productos} = "Cartera Documentada" and ${lkp_productos.tipo_producto} in ('Documentos Comprados','Documentos Descontados','Documentos Descontados (RECA)','Otros Préstamos Documentados')   ;;
        label: "Documentos Descontados y Comprados"
      }
      when: {
        sql: ${lkp_productos.familia_productos} in ("Hipotecario", "Hipotecarios")  ;;
        label: "Préstamos Hipotecarios"
      }
      when: {
        sql: ${lkp_productos.familia_productos} in ("Otros Préstamos", "Call Otorgado") or ${lkp_productos.producto_source} in ('DEUCOMEXD','DEUCOMEXP') ;;
        label: "Otros Préstamos"
      }
      when: {
        sql:${lkp_productos.familia_productos} in ("Personales") and ${lkp_productos.producto_source} not like "(A)%"  ;;
        label: "Préstamos Personales"
      }
      when: {
        sql: ${lkp_productos.familia_productos} in ("Prendarios", "Prendario")  ;;
        label: "Préstamos Prendarios"
      }
      when: {
        sql: ${lkp_productos.familia_productos} in ("Bienes en Locación Financiera") or (${lkp_productos.familia_productos} in ("OCIF") and ${lkp_productos.producto_source} in('PREBIELO','PREBIELO90'))  ;;
        label: "Leasing"
      }
      else: "Sin Clasificar"
    }
  }

  measure: saldo_sum{
    value_format: "0,,\" M\""
    type: sum
    sql: ${TABLE}.Saldo ;;
  }
  measure: saldo_promedio_mes {
    value_format: "0,,\" M\""
    type: sum
    sql: ${TABLE}.Saldo_Promedio_Mes ;;
  }

  dimension: sector_key {
    type: number
    sql: ${TABLE}.Sector_key ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.Sucursal_Radicacion_Key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
