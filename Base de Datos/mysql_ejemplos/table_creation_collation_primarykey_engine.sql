
-- CREACION TABLA CON STORAGE ENGINE, COLLATION Y PRIMARY KEY

CREATE TABLE posts (
    post_id int(3) NOT NULL AUTO_INCREMENT,
    post_category_id varchar(3),
    post_title varchar(255),
    post_author varchar(255),
    post_date date,
    post_image text,
    post_content text,
    post_tags varchar(255),
    post_comment_count varchar(255),
    post_status varchar(255),
    PRIMARY KEY (post_id)
)
CHARACTER SET latin1 COLLATE latin1_swedish_ci
ENGINE MyISAM;
