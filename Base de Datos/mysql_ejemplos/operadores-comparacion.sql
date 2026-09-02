-- Operadores de comparación:
    -- >; <; <=; >=; !=; BETWEEN; -; AND; IS NULL; NOT; IN

SELECT * FROM estudiantes WHERE edad    <= 34;
                                        != 34;
                                        BETWEEN 25 AND 35;
                                edad    IS NULL;
                                edad    IS NOT NULL;
                                ID      IN (20, 34); -- ID's entre 20 y 34

