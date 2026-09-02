ALTER TABLE device_cpe_interface_wan_radio 
DROP COLUMN puerto,
DROP COLUMN ip_gestion,
DROP COLUMN nombre_equipo;


ALTER TABLE comments ADD COLUMN user_id INT NOT NULL;
ALTER TABLE users ADD COLUMN `count` SMALLINT(6) NOT NULL AFTER `lastname`;

ALTER TABLE device_cpe_interface_wan_radio 
ADD COLUMN `nombre_equipo` VARCHAR(30) NOT NULL AFTER `fk_device_cpe`,
ADD COLUMN `puerto` VARCHAR(30) NOT NULL AFTER `tipo_puerto`,
ADD COLUMN `ip_gestion` VARCHAR(30) NOT NULL AFTER `puerto`;


-- With default value:
ALTER TABLE producto_ip_trunk ADD COLUMN `numero_virtual` INT NULL DEFAULT NULL AFTER `numeros_ip_trunk`;
