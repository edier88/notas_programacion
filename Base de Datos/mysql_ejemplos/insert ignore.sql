-- INSERT IGNORE. Ignora los registros que ya existen e inserta los que no existen, para esto revisa las llaves primarias o uniques

INSERT IGNORE INTO subscribers(email)
VALUES('john.doe@gmail.com'), 
      ('jane.smith@ibm.com');
