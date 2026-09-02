-- INSERT, UPDATE IF THERE IS DUPLICATE

-- FIRST EXAMPLE:
/*
If you specify an ON DUPLICATE KEY UPDATE clause and a row to be inserted would cause a duplicate value in a UNIQUE index or PRIMARY KEY, an UPDATE of the old row occurs. For example, if column a is declared as UNIQUE and contains the value 1, the following two statements have similar effect:
*/
INSERT INTO t1 (a,b,c) VALUES (1,2,3)
  ON DUPLICATE KEY UPDATE c=c+1;

/* The above statement is identical to this one: */
UPDATE t1 SET c=c+1 WHERE a=1;

/*
The effects are not quite identical: For an InnoDB table where a is an auto-increment column, the INSERT statement increases the auto-increment value but the UPDATE does not.
*/

/* If column b is also unique, the INSERT is equivalent to this UPDATE statement instead: */

UPDATE t1 SET c=c+1 WHERE a=1 OR b=2 LIMIT 1;





-- SECOND EXAMPLE:

INSERT INTO t1 (a,b,c) VALUES (1,2,3),(4,5,6) AS new
  ON DUPLICATE KEY UPDATE c = new.a+new.b;

/* That statement is identical to the following two statements: */

INSERT INTO t1 (a,b,c) VALUES (1,2,3)
  ON DUPLICATE KEY UPDATE c=3;
INSERT INTO t1 (a,b,c) VALUES (4,5,6)
  ON DUPLICATE KEY UPDATE c=9;
