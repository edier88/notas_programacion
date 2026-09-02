-- Lista todas las bases de datos y sus respectivas tablas.

select table_schema as database_name,
    table_name
from information_schema.tables
where table_type = 'BASE TABLE'
    and table_schema not in ('information_schema','mysql',
                             'performance_schema','sys')
order by database_name, table_name
