
/****** PRIMERA FUNCION DE EJEMPLO *****/


-- Creacion de funcion:

CREATE FUNCTION saludar()
RETURNS character varying -- Se indica lo que va a devolver la funcion
AS
$$
DECLARE
    nombre character varying;
BEGIN
    RETURN 'Hola mundo';
END;
$$
LANGUAGE plpgsql; -- Se indica el estandar de postgres. Se puede tambien usar PL/pgSQL, PL/Tcl, PL/Perl, PL/Python



-- Se llama la funcion:

SELECT saludar();


-- Como ejecutar la funcion dentro de una consulta:

SELECT nombre, valor, saludar() FROM colores;






/****** SEGUNDA FUNCION DE EJEMPLO ******/

CREATE REPLACE FUNCTION descuentofijo(_valor integer)
RETURNS real
AS
$BODY$
DECLARE 
   
$BODY$
