-- Operadores lógicos:
    -- AND; OR; NOT

SELECT * FROM estudiantes WHERE ID=1 AND edad>24;

SELECT * FROM estudiantes WHERE ID=1 AND edad>24 AND nombre="jhon";

SELECT * FROM estudiantes WHERE ID=1 OR edad>24; -- Si se cumple cualquiera de estas condiciones en el registro, trae el valor

