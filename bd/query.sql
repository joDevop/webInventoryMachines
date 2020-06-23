ALTER TABLE table_user_tec ADD active TINYINT (1) NOT NULL DEFAULT 0 AFTER password_tec

SELECT *FROM table_user_tec