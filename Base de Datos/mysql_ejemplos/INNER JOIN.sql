-- Se usa un filtro de ciudad mas un filtro de tiempo, entre fecha y fecha.

SELECT servicio.IDCreacion, servicio.Servicio, servicio.fk_UserID, inicial.Nombre, inicial.Apellidos, servicio.FechaInstalacion, servicio.FechaCorte
FROM servicio
INNER JOIN inicial ON servicio.fk_UserID=inicial.UserID;