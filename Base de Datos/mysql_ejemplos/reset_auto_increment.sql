

-- Le aplicamos Auto increment a la columna, si no lo tiene
ALTER TABLE documents MODIFY COLUMN document_id INT AUTO_INCREMENT;

-- Reseteamos el auto increment al valor que queramos
ALTER TABLE RUAV.producto_e1_primarios AUTO_INCREMENT = 3;
