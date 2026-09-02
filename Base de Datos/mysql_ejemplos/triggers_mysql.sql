-- TRIGGER WITH ONE SINGLE QUERY

CREATE TRIGGER insertlog -- trigger name
	AFTER INSERT ON authors -- name of the table that activates the trigger, the trigger will activate after the insertion of a row of the table "authors"
	FOR EACH ROW -- It will activate for each row that is inserted
	INSERT INTO logs VALUES(null, new.id, 'inserted', NOW()); -- The query that the trigger will make when it is activated 
-- Remember that "new.id" is the new value of "id" column that has been inserted in "authors"




-- TRIGGER WITH MULTIPLE QUERIES

DELIMITER $$
CREATE TRIGGER count_comments
	AFTER INSERT ON comments FOR EACH ROW
	BEGIN
	SET @total_comments = (SELECT COUNT(post_id) FROM comments WHERE post_id=NEW.post_id); -- The result of this query will be saved in the variable "total_comments"
	UPDATE posts SET post_comment_count=@total_comments WHERE post_id=NEW.post_id;
	END$$
DELIMITER ;




-- TRIGGER WITH MULTIPLE QUERIES (Trigger that updates a table after a deletion)

DELIMITER $$
CREATE TRIGGER count_comments
	AFTER DELETE ON comments FOR EACH ROW
	BEGIN
	SET @total_comments = (SELECT COUNT(post_id) FROM comments WHERE post_id=OLD.post_id); -- The OLD is because the row will no longer exists after deletion
	UPDATE posts SET post_comment_count=@total_comments WHERE post_id=OLD.post_id;
	END$$
DELIMITER ;



