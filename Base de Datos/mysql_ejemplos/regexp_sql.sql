
-- Uso de Expresiones Regulares en Sentencias SQL:

SELECT * FROM `px` WHERE NUM_ENL NOT REGEXP "[0-9]+" AND NUM_ENL!="libre" 
