-- CREAR, CONSULTAR E INSERTAR DATA EN JSON EN UNA TABLA

-- Como crear la tabla:
CREATE TABLE json_table(
   id SERIAL,
   json_column JSON
);

-- Como insertar objetos JSON:
INSERT INTO json_table (json_column) VALUES ('{"id" : 1, "producto" : "papa"}'), ('{"id" : 2, "producto" : "yuca"}');

-- Como consultar la tabla:
SELECT * FROM json_table;
SELECT json_column->'producto' FROM json_table; -- Trae los valores entre comillas dobles
SELECT json_column->>'producto' FROM json_table; -- Trae los valores sin comillas dobles

SELECT json_column->>'id' AS id, json_column->>'producto' AS producto  FROM json_table;

SELECT json_column->>'id' AS id, json_column->>'producto' AS producto  FROM json_table WHERE json_column->>'producto' = 'papa';



-- CONVERTIR FILAS DE UNA TABLA A JSON

SELECT ROW_TO_JSON(users) FROM users;
