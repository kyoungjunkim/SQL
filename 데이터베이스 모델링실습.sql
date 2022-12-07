
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('10','국어국문학과','051-510-1010');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('11','영어영문학과','051-510-1011');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('20','경영학과','051-510-1020');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('21','경영학과','051-510-1021');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('22','정치외교학과','051-510-1022');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('23','사회복지학과','051-510-1023');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('30','수학과','051-510-1030');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('31','통계학과','051-510-1031');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('32','생명과학과','051-510-1032');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('40','기계공학과','051-510-1040');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('41','전자공학과','051-510-1041');
insert into `Departments` (`depNo`,`depName`,`depHp`) values ('42','컴퓨터공학과','051-510-1042');


insert into `professors` values ('P10101','김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울','10');
insert into `professors` values ('P10102','계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울','10');
insert into `professors` values ('P11101','김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전','11');
insert into `professors` values ('P11103','김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전','11');
insert into `professors` values ('P11104','이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전','11');
insert into `professors` values ('P22110','장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구','22');
insert into `professors` values ('P23102','선덕여왕','830614-1234567','010-4101-1984','queen@hg.ac.kr','대구','23');
insert into `professors` values ('P31101','강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구','31');
insert into `professors` values ('P31104','신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산','31');
insert into `professors` values ('P40101','이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산','40');
insert into `professors` values ('P40102','이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주','40');
insert into `professors` values ('P42103','송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주','42');


insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('20101001','10','P10101','정우성','760121-1234567','010-1101-7601','서울'); 
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('20101002','10','P10101','이정재','750611-1234567','010-1102-7506','서울'); 
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('20111011','11','P11103','전지현','890530-1234567','010-1103-8905','대전','jjh@naver.com');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('20111013','11','P11103','이나영','790413-1234567','010-2101-7904','대전','lee@naver.com');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('20111014','11','P11104','원빈','660912-1234567','010-2104-6609','대전','one@daum.net');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('21221010','22','P22110','장동건','790728-1234567','010-3101-7907','대구','jang@naver.com');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('21231002','23','P23102','고소영','840615-1234567','010-4101-8406','대구','goso@daum.net');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('22311011','31','P31104','김연아','651021-1234567','010-5101-6510','대구','yuna@daum.net');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('22311014','31','P31104','유재석','721128-1234567','010-6101-7211','부산'); 
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('22401001','40','P40101','강호동','920907-1234567','010-7103-9209','부산'); 
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('22401002','40','P40101','조인성','891209-1234567','010-7104-8912','광주','join@gmail.com');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`,`stdEmail`) values ('22421003','42','P42103','강동원','770314-1234567','010-8101-7703','광주','dong@naver.com');



insert into `lectures` values ('101001','대학글쓰기',2,10,'본102','P10101');
insert into `lectures` values ('101002','한국어음운론',3,30,'본102','P10102');
insert into `lectures` values ('101003','한국현대문학사',3,30,'본103','P10102');
insert into `lectures` values ('111011','중세영문학',3,25,'본201','P11103');
insert into `lectures` values ('111012','영미시',3,25,'본201','P11104');
insert into `lectures` values ('231110','사회복지학개론',1,8,'별관103','P23102');
insert into `lectures` values ('311002','통계학의이해',2,16,'별관303','P31101');
insert into `lectures` values ('311003','기초통계학',3,26,'별관303','P31104');
insert into `lectures` values ('401019','기계역학',3,36,'공학관102','P40101');
insert into `lectures` values ('421012','데이터베이스',3,32,'공학관103','P42103');


insert into `register` (`stdNo`,`lecNo`) values ('20101001','101001'); 
insert into `register` (`stdNo`,`lecNo`) values ('20101001','101002'); 
insert into `register` (`stdNo`,`lecNo`) values ('20111013','111011'); 
insert into `register` (`stdNo`,`lecNo`) values ('21231002','231110'); 
insert into `register` (`stdNo`,`lecNo`) values ('22401001','401019'); 
insert into `register` (`stdNo`,`lecNo`) values ('22401001','421012'); 
insert into `register` (`stdNo`,`lecNo`) values ('20101001','101003'); 
insert into `register` (`stdNo`,`lecNo`) values ('22421003','311003'); 
insert into `register` (`stdNo`,`lecNo`) values ('22421003','421012'); 
insert into `register` (`stdNo`,`lecNo`) values ('20111013','111012'); 














 
