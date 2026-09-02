-- UNION ALL con un sólo WHERE para filtrar. Es decir, sin necesidad de poner el WHERE en cada SELECT

SELECT *

FROM (

SELECT d.*, 'GESTON' AS Producto, g.ip_gestion AS IP, g.fk_atributos_estados AS Estado,'NA' AS Solicitud, g.orden_rms AS Orden FROM device_cpe d 
JOIN producto_gestion g ON d.id_device_cpe = g.fk_device_cpe

UNION ALL

SELECT d.*, 'H248' AS Producto, h.ip_iad_h248 AS IP, h.fk_atributos_estados AS Estado, h.fk_solicitudes AS Solicitud, h.orden_rms_h248 AS Orden FROM device_cpe d 
JOIN producto_h248 h ON d.id_device_cpe = h.fk_device_cpe

) AS U

WHERE U.hostname="FARA_PPAL_1220_01"
