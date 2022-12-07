#날짜 : 2022/10/18
#이름 : 김경준
#내용 : 게시판서비스 테이블 설계

#데이터베이스 생성
CREATE DATABASE `java1_board`;
CREATE USER 'java1_board'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES on `java1_board`.* TO 'java1_board'@'%';
FLUSH PRIVILEGES;



#회원 테이블 생성
CREATE TABLE `board_user` (
	`uid`		VARCHAR(20) PRIMARY key,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`nick`	VARCHAR(20) unique,
	`email` 	VARCHAR(100) unique,
	`hp`		CHAR(13) unique,
	`grade` 	TINYINT DEFAULT 2,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2` 	VARCHAR(255),
	`regip`	VARCHAR(100),
	`rdate`	DATETIME
);



#약관 테이블 생성
CREATE TABLE `board_terms` (
	`terms` 		TEXT,
	`privacy`	TEXT
);

#게시물 테이블 생성
CREATE TABLE `board_article` (
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT not null,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20) NOT null,
	`regip`		VARCHAR(100) NOT null,
	`rdate`		DATETIME NOT null
);



#파일 테이블 생성
CREATE TABLE `board_file` (
	`fno`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT,
	`newName`	VARCHAR(255),
	`oriName`	VARCHAR(255),
	`download`	INT DEFAULT 0,
	`rdate`		datetime
);





INSERT INTO `order`(orderid, orderproduct, ordercount, orderdate) VALUES ('김춘추', '포카칩', 2, NOW());


INSERT INTO `Order` VALUES (1,  'c102',  3, 2, '2022-07-01 13:15:10');
INSERT INTO `Order` VALUES (2,  'c101',  4, 1, '2022-07-01 14:16:11');
INSERT INTO `Order` VALUES (3,  'c108',  1, 1, '2022-07-01 17:23:18');
INSERT INTO `Order` VALUES (4,  'c109', 6, 5, '2022-07-02 10:46:36');
INSERT INTO `Order` VALUES (5,  'c102',  2, 1, '2022-07-03 09:15:37');
INSERT INTO `Order` VALUES (6,  'c101',  7, 3, '2022-07-03 12:35:12');
INSERT INTO `Order` VALUES (7,  'c110', 1, 2, '2022-07-03 16:55:36');
INSERT INTO `Order` VALUES (8,  'c104',    2, 4, '2022-07-04 14:23:23');
INSERT INTO `Order` VALUES (9,  'c102', 1, 3, '2022-07-04 21:54:34');
INSERT INTO `Order` VALUES (10, 'c107',  6, 1, '2022-07-05 14:21:03');



SELECT a.*, b.`name`, c.`prodName` FROM `order` AS a
JOIN `customer` AS b ON a.orderid = b.custid
JOIN `product` AS c ON a.orderproduct = c.prodno;


SELECT a.*, b.`fno`, b.`oriName`, b.`download`
FROM `board_article` AS a
left JOIN `board_file` AS b
ON a.`no` = b.`parent`
WHERE `no`=1

SELECT * FROM `board_article` WHERE `parent`=1;
ORDER BY `no` ASC;

SELECT a.*, b.nick FROM `board_article` AS 
JOIN `board_user` AS b USING (`uid`)
WHERE `parent`=9 ORDER BY `no` ASC;

SELECT a.*, b. FROM `board_article` AS a
JOIN `board_user` AS b USING(`uid`)
WHERE `parent` != 0 ORDER BY `no` DESC LIMIT 1;

UPDATE `board_article` SET `content`=?, `rdate`= NOW() where`no`=?;


UPDATE `board_article` SET `title`=?, `content`=? WHERE `no`=?;