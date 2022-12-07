#날짜 : 2022/09/01
#이름 : 김경준
#내용 : SQL연습문제3

#실습 3-1
create database `college`;
create user 'java1_admin3'@'%' identified by '1234';
grant all privileges on `college`.* to 'java1_admin3'@'%';
flush privileges;

#실습 3-2
create table `student` (
						`stdno` varchar(8) primary key,
                        `stdname` varchar(20) not null,
                        `stdhp` varchar(13) not null,
                        `stdyear` int not null,
                        `stdaddress` varchar(100) default null
                        );
                        
                        
create table `lecture` (
						`lecno` int primary key,
                        `lecname` varchar(20) not null,
                        `leccredit` int not null,
                        `lectime` int not null,
                        `lecclass` varchar(10) default null
                        );


create table `register` (
						`regstdno` varchar(8) ,
                        `reglecno` int not null,
                        `regmidscore` int default null,
                        `regfinalscore` int default null,
                        `regtotalscore` int default null,
                        `reggrade` char(1) default null
        
        );



#실습 3-3
insert into `student` (`stdno`,`stdname`,`stdhp`,`stdyear`) values ('20201016','김유신','010-1234-1001',3);
insert into `student` values ('20201126','김춘추','010-1234-1002',3,'경상남도 경주시');
insert into `student` values ('20210216','장보고','010-1234-1003',2,'전라남도 완도시');
insert into `student` values ('20210326','강감찬','010-1234-1004',2,'서울시 영등포구');
insert into `student` values ('20220416','이순신','010-1234-1005',1,'부산시 부산진구');
insert into `student` values ('20220521','송상현','010-1234-1006',1,'부산시 동래구');


insert into `lecture` values (159,'인지행동심리학',3,40,'본304');
insert into `lecture` values (167,'운영체제론',3,25,'본B05');
insert into `lecture` values (234,'중급 영문법',3,20,'본201');
insert into `lecture` values (239,'세법개론',3,40,'본204');
insert into `lecture` values (248,'빅데이터개론',3,20,'본B01');
insert into `lecture` values (253,'컴퓨팅사고와코딩',2,10,'본B02');
insert into `lecture` values (349,'사회복지마케팅',2,50,'본301');


insert into `register` (`regstdno`,`reglecno`) values ('20201126',234);
insert into `register` (`regstdno`,`reglecno`) values ('20201016',248);
insert into `register` (`regstdno`,`reglecno`) values ('20201016',253);
insert into `register` (`regstdno`,`reglecno`) values ('20201126',239);
insert into `register` (`regstdno`,`reglecno`) values ('20210216',349);
insert into `register` (`regstdno`,`reglecno`) values ('20210326',349);
insert into `register` (`regstdno`,`reglecno`) values ('20201016',167);
insert into `register` (`regstdno`,`reglecno`) values ('20220416',349);

#실습 3-4

select * from`lecture`;

#실습 3-5

select * from `student`;

#실습 3-6

select * from `register`;


#실습 3-7

select * from `student` where `stdyear`=3;

#실습 3-8

select * from `lecture` where `leccredit`=2;

#실습 3-9

update `register` set `regmidscore` =  36 , `regfinalscore`= 42 where `regstdno` = '20201126' and `reglecno` = 234;
update `register` set `regmidscore` =  24 , `regfinalscore`= 62 where `regstdno` = '20201016' and `reglecno` = 248;
update `register` set `regmidscore` =  28 , `regfinalscore`= 40 where `regstdno` = '20201016' and `reglecno` = 253;
update `register` set `regmidscore` =  37 , `regfinalscore`= 57 where `regstdno` = '20201126' and `reglecno` = 239;
update `register` set `regmidscore` =  28 , `regfinalscore`= 68 where `regstdno` = '20210216' and `reglecno` = 349;
update `register` set `regmidscore` =  16 , `regfinalscore`= 65 where `regstdno` = '20210326' and `reglecno` = 349;
update `register` set `regmidscore` =  18 , `regfinalscore`= 38 where `regstdno` = '20201016' and `reglecno` = 167;
update `register` set `regmidscore` =  25 , `regfinalscore`= 58 where `regstdno` = '20220416' and `reglecno` = 349;

#실습 3-10
update `register` set 
			`regTotalScore`= `regMidScore` + `regFinalScore`,
			`regGrade` = if(`regTotalScore` >= 90, 'A',
			if(`regTotalScore` >= 80, 'B',
			if(`regTotalScore` >= 70, 'C',
			if(`regTotalScore` >= 60, 'D', 'F'))));


#실습 3-11

select * from `register` order by `regtotalscore` desc;

#실습 3-12

select * from `register` where `reglecno` = 349 order by `regtotalscore` desc;

#실습 3-13
select * from `lecture` where `lectime` >= 30;

#실습 3-14
select `lecname`, `lecclass` from `lecture`;

#실습 3-15
select `stdno`, `stdname` from `student`;

#실습 3-16
select * from `student` where `stdaddress` is null;

#실습 3-17
select * from `student` where `stdaddress`  like'부산%';

#실습 3-18
select * from `student` as a  left join  `register` as b on a.stdno=b.regstdno;

#실습 3-19
select `stdno`, `stdname`, `reglecno`, `regmidscore`, `regfinalscore`, `regtotalscore`, `reggrade`
			from `student` as a, `register` as b where a.stdno=b.regstdno
            order by `stdno`;
           

#실습 3-20
select `stdname`, `stdno`, `reglecno`
	from `student` as a
    join `register` as b on a.stdno = b.regstdno
    where `reglecno` = 349;

#실습 3-21
select `stdno`,
		`stdname`,
        count(`stdno`) as '수강신청 건수',
        sum(`regtotalscore`) as '종합점수',
		sum(`regtotalscore`) / count(`stdno`) as '평균'
        from `student` as a
        join `register` as b on a.stdno = b.regstdno
        group by `stdno`;
	
        
        


# 실습 3-22
SELECT * FROM `Register` AS a
JOIN `Lecture` AS b
ON a.regLecNo = b.lecNo;

# 실습 3-23
SELECT 
	`regStdNo`,
	`regLecNo`,
	`lecName`,
	`regMidScore`,
	`regFinalScore`,
	`regTotalScore`,
	`regGrade`
FROM `Register` AS a
JOIN `Lecture` AS b
ON a.regLecNo = b.lecNo;

# 실습 3-24
SELECT
	COUNT(*) AS `사회복지 마케팅 수강 신청건수`,
	AVG(`regTotalScore`) AS `사회복지 마케팅 평균`
FROM `Register` AS a
JOIN `Lecture` AS b
ON a.regLecNo = b.lecNo
WHERE `lecName`='사회복지 마케팅';

# 실습 3-25
SELECT 
	`regStdNo`,
	`lecName`
FROM `Register` AS a
JOIN `Lecture` AS b
ON a.regLecNo = b.lecNo
WHERE `regGrade`='A';

# 실습 3-26
SELECT * FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS c ON b.regLecNo = c.lecNo;

# 실습 3-27
SELECT
	`stdNo`,
	`stdName`,
	`lecNo`,
	`lecName`,
	`regMidScore`,
	`regFinalScore`,
	`regTotalScore`,
	`regGrade`	
FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS c ON b.regLecNo = c.lecNo
ORDER BY `regGrade`;

#실습 3-28
select `stdno`, `stdname`, `lecname`, `regtotalscore`, `reggrade`
	from `student` as a
	join `register` as b on a.stdno = b.regstdno 
    join `lecture` as c on b.reglecno = c.lecno
    where `reggrade` = 'F';

#실습 3-29
select `stdno`,
		`stdname`,
		sum(`leccredit`) as 이수학점
 from `student` as a
join `register` as b on a.stdno = b.regstdno 
    join `lecture` as c on b.reglecno = c.lecno
    where `reggrade` != 'F'
    group by `stdno`;

#실습 3-30
select 
	`stdno`,
    `stdname`,
    group_concat(`lecname`) as `신청과목`, /*문자열 연결해주는 함수 concat*/ 
    group_concat(if(`regtotalscore` >=60,`lecname`, null)) as '이수과목'
from `student` as a
join `register` as b on a.stdno = b.regstdno 
    join `lecture` as c on b.reglecno = c.lecno
    group by `stdno`;