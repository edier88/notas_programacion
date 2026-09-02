-- CREACION TABLA (en postgresql hay un sólo Engine, no como en MySQL, que se debe elegir entre MyISAM e INNODB)

CREATE TABLE posts (
    post SERIAL NOT NULL,
    category VARCHAR(3) COLLATE "es_CO.utf8" NOT NULL,
    title VARCHAR(255) COLLATE "es_CO.utf8" NOT NULL
);



CREATE TABLE <table_name> (
    <id> SERIAL NOT NULL,
    <column1> VARCHAR(3) NOT NULL,
    <column2> VARCHAR(255) NOT NULL,
    <column2> VARCHAR(255) DEFAULT <default_value>,
    <column3> INT NOT NULL,
    CONSTRAINT <constraint_name> CHECK (column1 > value1 and column1 < value2), -- if the inserted value is not between this two values, the data won't be inserted
    CONSTRAINT <constraint_name> PRIMARY KEY (columnN,...,columnM),
    CONSTRAINT <constraint_name> UNIQUE (columnN,...,columnM),
    CONSTRAINT <constraint_name> FOREIGN KEY (columnN,...,columnM) REFERENCES
						<table_name>(columnN,...,columnM) 
						ON DELETE <action_name> 
						ON UPDATE <action_name> 
);
