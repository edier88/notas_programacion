-- change table collation

ALTER TABLE users CHARACTER SET = utf8



-- change column collation

ALTER TABLE `users` CHANGE `username` `username` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
