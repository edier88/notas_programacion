-- Cambiar una columna por unica

ALTER TABLE palaciorosa_DB.usuarios ADD UNIQUE (username, email);
