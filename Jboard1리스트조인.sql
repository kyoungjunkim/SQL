SELECT a.*, b.`nick` FROM `board_article` AS a
JOIN `board_user` AS b
ON a.uid = b.uid
ORDER BY `no` DESC
LIMIT 30, 10;

SELECT COUNT(`no`) FROM `board_article`;


INSERT INTO `board_article` (`title`, `content`, `uid`, `regip`, `rdate`)
SELECT `title`, `content`, `uid`, `regip`, `rdate` FROM `board_article`;

