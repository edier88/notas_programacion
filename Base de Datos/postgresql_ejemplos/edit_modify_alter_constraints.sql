-- NO ES POSIBLE MODIFICAR O EDITAR EL CONSTRAINT, SE DEBE ELIMINAR Y DESPUES VOLVER A CREAR

ALTER TABLE <table_name> DROP CONSTRAINT "constraint_name";
ALTER TABLE <table_name> ADD CONSTRAINT "constraint_name" FOREIGN KEY (id) REFERENCES <table_name>(id) ON UPDATE <action> ON DELETE <action>;

/* 

La "action" puede ser cualquiera de estas:

- SET NULL	--> pone la foreign key referenciada como NULL
- SET DEFAULT	--> pone el valor por defecto en la foreign key referenciada
- RESTRICT	--> restringe la accion de UPDATE, DELETER, etc
- NO ACTION	--> no se produce ninguna accion
- CASCADE	--> lo mismo que se haga a la foreign key se hará en las otras tablas en cascada

*/
