1. Hacker table

/*
如果你不想字段为 NULL 可以设置字段的属性为 NOT NULL， 在操作数据库时如果输入该字段的数据为NULL ，就会报错。
AUTO_INCREMENT定义列为自增的属性，一般用于主键，数值会自动加1。
PRIMARY KEY关键字用于定义列为主键。 您可以使用多列来定义主键，列间以逗号分隔。
ENGINE 设置存储引擎，CHARSET 设置编码。

desc table_name;
*/

CREATE TABLE IF NOT EXISTS `Hackers`(
   `hacker_id` INT NOT NULL,
   `name` VARCHAR(100) NOT NULL,
   PRIMARY KEY ( `hacker_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Hackers (hacker_id, name)
                    VALUES
                    (4071, "Rose"), (74842, "Lisa"), (84072, "Bonnie");


2. Submissions table

CREATE TABLE IF NOT EXISTS `Submissions1`(
   `submission_id` INT NOT NULL,
   `hacker_id` INT NOT NULL,
   `challenge_id` INT NOT NULL,
   `score` INT NOT NULL,   
   PRIMARY KEY ( `submission_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Submissions1 (submission_id, hacker_id, challenge_id, score)
                    VALUES
                    (67194, 74842, 63132, 76), (64479, 74842, 19797, 98), (81614, 84072, 49593, 100),
                    (6943, 4071, 19797, 95), (84264, 84072, 63132, 0), (9951, 4071, 49593, 43),
                    (53795, 74842, 19797, 5), (10063, 4071, 49593, 96);
