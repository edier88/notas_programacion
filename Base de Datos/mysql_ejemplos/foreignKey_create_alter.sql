-- Create Example:


CREATE TABLE orders (
    OrderID int NOT NULL AUTO_INCREMENT,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES persons(PersonID)
)
CHARACTER SET utf8 COLLATE utf8_general_ci
ENGINE MyISAM;




-- Alter:

ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID); 

ALTER TABLE Orders
ADD PRIMARY KEY (OrderNumber);


-- Drop Foreign Key:

ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder; 

-- Drop Primary Key:

ALTER TABLE Orders
DROP PRIMARY KEY; 

-- Drp Unique keys:
ALTER TABLE novedades
DROP INDEX id_usuario_afectado,
DROP INDEX ano,
DROP INDEX mes,
DROP INDEX id_tipo_novedad



-- UNIQUE KEYS (aqui solo puede haber UN solo user_id en determinado mes y en determinado año) y NADIE puede repetir email, el email es UNICO
CREATE TABLE liquidacion (
    id_liquidacion BIGINT NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    ano smallint NOT NULL,
    mes tinyint NOT NULL,
    cuota_impactos SMALLINT NOT NULL DEFAULT 0,
    resultado_impactos SMALLINT NOT NULL,
    fecha_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    creado_por BIGINT NOT NULL,
    fecha_actualizacion DATETIME NULL,
    actualizado_por BIGINT NULL,
    email EMAIL
    id_estado TINYINT NOT NULL,
    PRIMARY KEY (id_liquidacion),
    UNIQUE KEY liquidacion_usuario_mes_ano (user_id, mes, ano),
    UNIQUE KEY (email)
)
CHARACTER SET utf8 COLLATE utf8_general_ci
ENGINE InnoDB;

