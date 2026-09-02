

-- Para crear un tipo JSON en una columna de una tabla:

CREATE TABLE datos (
    id TINYINT NOT NULL AUTO_INCREMENT,
    data JSON NOT NULL,
    PRIMARY KEY (id)
)
CHARACTER SET utf8 COLLATE utf8_general_ci
ENGINE MyISAM;





-- Para consultar un dato JSON en la columna "data" (Un objeto JSON. Ejemplo: {"id": 1, "fruta": "pera"} )

SELECT JSON_EXTRACT(data,"$.id") FROM `datos`; 
-- OR
SELECT data->"$.id" FROM `datos`; 





-- Para consultar un dato JSON en la columna "data" (Un JSON Array. Ejemplo: [{"id": 1, "fruta": "pera"},{"id": 1, "fruta": "manzana"}] )


-- Trae el primer objeto JSON

SELECT JSON_EXTRACT(data,"$[0]") FROM `datos`; 
-- OR
SELECT data->'$[0]' FROM `datos`;


-- Trae el valor de la llave "fruta" en el segundo objeto JSON 

SELECT JSON_EXTRACT(data,"$[1].fruta") FROM `datos`; 
-- OR
SELECT data->'$[1].fruta' FROM `datos`; 



