view: lkp_productos {
  sql_table_name: `LOOKER.lkp_productos`
    ;;

  dimension: cartera {
    type: string
    sql: ${TABLE}.Cartera ;;
  }

  dimension: familia_productos {
    type: string
    sql: ${TABLE}.Familia_Productos ;;
  }

  dimension: paquete {
    type: string
    sql: ${TABLE}.Paquete ;;
  }

  dimension: precancelable {
    type: string
    sql: ${TABLE}.Precancelable ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.Producto_Key ;;
  }

  dimension: producto_source {
    type: string
    sql: ${TABLE}.Producto_Source ;;
  }

  dimension: subproducto {
    type: string
    sql: ${TABLE}.Subproducto ;;
  }

  dimension: tipo_producto {
    type: string
    sql: ${TABLE}.Tipo_Producto ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
