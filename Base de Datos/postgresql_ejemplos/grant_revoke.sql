-- dar o quitar privilegios a usuarios de POSTGRES


-- GRANT (brindar permisos)
GRANT CONNECT ON DATABASE <database_name> TO <user>;
GRANT SELECT ON <table_name> TO <user>;
GRANT UPDATE ON <table_name> TO <user>;


-- REVOKE (quitar permisos)
REVOKE CONNECT ON DATABASE <database_name> TO <user>;
REVOKE SELECT ON <table_name> TO <user>;
REVOKE UPDATE ON <table_name> TO <user>;
