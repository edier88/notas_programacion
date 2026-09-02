-- change/modify column data type

ALTER TABLE users MODIFY COLUMN user_role ENUM('admin', 'premium', 'normal');
