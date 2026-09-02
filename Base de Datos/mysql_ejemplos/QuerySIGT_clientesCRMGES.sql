SELECT
    b.id__contratos,
    b.telefono_factura,
    b.suscriptor AS contrato_open,
    c.nombre_plan,
    c.qosmetering as velocidadContratada,
    d.nombre_clientes,
    f.prodireccion,
    d.telefono_contacto,
    d.cel_contacto,
    CASE
        WHEN e.PCFL_ESTACT IS NULL THEN b.estrato
        ELSE e.PCFL_ESTACT
    END AS estrato,
    e.COMUNA as comuna,
    CASE
        WHEN gestion__central.nombre_central IS NULL THEN gcftthc.nombre_central
        ELSE gestion__central.nombre_central
    END AS central,
    RMS__uam.nombre_normalizado AS uam,
    RMS__uam.uamanillo AS anillo,
    l.nombre_switch,
    n.nombre_normalizado AS BRAS,
    gestion__transporte.nombre_transporte,
    bss__tipo_producto.nombre_tipo_producto as nombre_tipo_producto,
    CASE
        WHEN gestion__central.nombre_central IS NULL THEN gcftth.nombre_central
        ELSE e.PCFL_CABSEC
    END AS armario,
    e.PCFL_PARSEC AS par_Sec,
    atributos__estados.nombre_estado AS estado,
    X( e.POSITION ) AS latitud,
    Y( e.POSITION ) AS longitud,
    nombre_paquetes,
    peso_productid,
    b.n_stb AS cantidad_stbs,
    nombre_categorias as nombre_categorias,
    x.tipo_cliente,
    adsl.AturAttainableRate as max_vel_subida,
    adsl.AtucAttainableRate as max_vel_bajada,
    adsl.AtucChanCurrTxRate as vel_actual_bajada,
    adsl.AturChanCurrTxRate as vel_actual_subida,
    adsl.AtucAttainableRate - adsl.AtucChanCurrTxRate as disponible,
    adsl.AturCurrAtn as atenuacion,
    GROUP_CONCAT(f.fecha_instalacion) AS fecha_instalacion
    FROM bss__contratos b
    JOIN comercial__planes c ON ( b.fk_comercial__planes = c.id__planes )
    JOIN bss__clientes d ON d.id__clientes = (CASE WHEN b.fk_bss__clientes=1
                                THEN b.cliente_sigt
                                ELSE b.fk_bss__clientes
                            END)
    LEFT JOIN bss__tipo_cliente x ON (d.fk_bss__tipo_cliente = x.id__tipo_cliente)
    LEFT JOIN recursos__cobre e ON ( e.PCFL_TELACT = b.telefono_factura )
    JOIN bss__productos f ON ( fk_bss__contratos = id__contratos )
    INNER JOIN atributos__estados ON ( f.fk_atributos__estados = atributos__estados.id__estados )
    LEFT JOIN gestion__central ON ( e.building = gestion__central.id__central )
    JOIN comercial__categorias ON (f.procategoria = comercial__categorias.id__categorias)
    JOIN bss__tipo_producto ON ( fk_bss__tipo_producto = id__tipo_producto )
    JOIN adsl__recurso adsl ON ( adsl.id__recurso = b.fk_adsl__recurso )
    LEFT JOIN gestion__central gcftth ON adsl.fk_gestion__central = gcftth.id__central
    LEFT JOIN gestion__central gcftthc ON gcftth.central_padre = gcftthc.id__central
    INNER JOIN gestion__transporte ON ( gestion__transporte.id__transporte = IF(adsl.fk_gestion__transporte1 = 0, adsl.fk_gestion__transporte, adsl.fk_gestion__transporte1) )
    INNER JOIN RMS__uam ON ( RMS__uam.id__uam = adsl.fk_RMS__uam )
    LEFT JOIN bss__paquetes_canales ON ( fk_bss__paquetes_canales = id__paquetes)
    INNER JOIN RMS__switch l ON l.id__switch = RMS__uam.fk_RMS__switch
    INNER JOIN RMS__uas n ON n.id__uas = l.fk_RMS__uas
    GROUP BY b.id__contratos, f.id__productos