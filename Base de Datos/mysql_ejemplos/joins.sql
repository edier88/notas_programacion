-- INNER JOIN vs LEFT JOIN

SELECT * FROM estudiantes e 
RIGHT JOIN tecnologias t ON e.id = t.estudiante_fk; -- Tiene prioridad la tabla de la derecha, es decir, "tecnologias".
    /* Si no encuentra una relación entre ellas dos, mostrará los datos de "tecnologias" 
       y rellenará los de la tabla "estudiantes" (que no tienen relación alguna con los datos de la tabla "tecnologias") con valores nulos
    */

SELECT * FROM estudiantes e 
LEFT JOIN tecnologias t ON e.id = t.estudiante_fk; -- Tiene prioridad la tabla de la izquierda, es decir, "estudiantes".
    /* Si no encuentra una relación entre ellas dos, mostrará los datos de "estudiantes" normalmente 
       y rellenará los de la tabla "tecnologias" (que no tienen relación alguna con los datos de la tabla "estudiantes") con valores nulos
    */

SELECT * FROM estudiantes e 
INNER JOIN tecnologias t ON e.id = t.estudiante_fk;
-- Con INNER JOIN se mostrarán SOLO los datos que tengan relación entre ellos. Es decir, ya no habrán datos nulos.

