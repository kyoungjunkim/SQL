#실습 4-1
create database	`BookStore`;
create user 'java1_admin4'@'%' identified by '1234';
grant all privileges on `BookStore`.* to 'java1_admin4'@'%';
flush privileges;

#실습 4-2
create table `Customer` (
						`custId` int auto_increment primary key,
                        `name` varchar(10) not null,
                        `address` varchar(20) default null,
                        `phone` varchar(13) default null
		);

create table `Book` (
						`bookId` int primary key,
						`bookName` varchar(20) not null,
                        `publisher` varchar(20) not null,
                        `price` int default null
		);
        
create table `Order` (
						`orderId` int auto_increment primary key,
                        `custId` int not null,
                        `bookId` int not null,
                        `salePrice` int not null,
                        `orderDate` date not null
		);


#실습 4-3
insert into `Customer`  (`name`, `address`, `phone`) values ('박지성', '영국 멘체스타', '000-5000-0001');
insert into `Customer`  (`name`, `address`, `phone`) values ('김연아', '대한민국 서울', '000-6000-0001');
insert into `Customer`  (`name`, `address`, `phone`) values ('장미란', '대한민국 강원도', '000-7000-0001');
insert into `Customer`  (`name`, `address`, `phone`) values ('추신수', '미국 클리블랜드', '000-8000-0001');
insert into `Customer`  (`name`, `address`) values ('박세리', '대한민국 대전');

insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (1,'축구의 역사','굿스포츠',7000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (2,'축구아는 여자','나무수',13000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (3,'축구의 이해','대한미디어',22000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (4,'골프 바이블','대한미디어',35000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (5,'피겨 교본','굿스포츠',8000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (6,'역도 단계별기술','굿스포츠',6000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (7,'야구의 추억','이상미디어',20000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (8,'야구를 부탁해','이상미디어',13000);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (9,'올림픽 이야기','삼성당',7500);
insert into `Book` (`bookId`,`bookName`,`publisher`,`price`) values (10,'Olympic Champions','Person',13000);

insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (1,1,6000,'2014-07-01'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (1,3,21000,'2014-07-03'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (2,5,8000,'2014-07-03'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (3,6,6000,'2014-07-04'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (4,7,20000,'2014-07-05'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (1,2,12000,'2014-07-07'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (4,8,13000,'2014-07-07'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (3,10,12000,'2014-07-08'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (2,10,7000,'2014-07-09'); 
insert into `Order` (`custId`,`bookId`,`salePrice`,`orderDate`) values (3,8,13000,'2014-07-10'); 


#실습 4-4
select `custId`,`name`,`address` from `Customer`;

#실습 4-5
select `bookName`,`price` from `Book`;

#실습 4-6
select `price`,`bookName` from `book`;

#실습 4-7
select `bookId`,`bookName`,`publisher`,`price`from `Book`;

#실습 4-8
select `publisher` from `Book`;

#실습 4-9
select distinct `publisher` from `Book`;

#실습 4-10
select `bookId`,`bookName`,`publisher`,`price` from `Book` where price >=20000;

#실습 4-11
select `bookId`,`bookName`,`publisher`,`price` from `Book` where price  < 20000;

#실습 4-12
select `bookId`,`bookName`,`publisher`,`price` from `Book` where price > 10000 and price <= 20000;

#실습 4-13
select `bookId`,`bookName`,`price` from `Book` where price >15000 and price <= 30000;

#실습 4-14
select `bookId`,`bookName`,`publisher`,`price` from `Book` where `bookId` =2 or `bookId` =3 or   `bookId` = 5;

#실습 4-15
select `bookId`,`bookName`,`publisher`,`price` from `Book` where `bookId`%2=0;

#실습 4-16
select `custId`,`name`,`address`,`phone` from `Customer` where `name` like '박%';

#실습 4-17
select `custId`,`name`,`address`,`phone` from `Customer` where `address` like '대한민국%';

#실습 4-18
select `custId`,`name`,`address`,`phone` from `Customer` where `phone` is not null;

#실습 4-19
select `bookId`,`bookName`,`publisher`,`price` from `Book` where `publisher` = '굿스포츠' or `publisher` = '대한미디어';

#실습 4-20
select `publisher` from `Book` where `bookName` = '축구의 역사';

#실습 4-21
select `publisher` from `Book` where `bookName` like '축구%';

#실습 4-22
select `bookId`,`bookName`,`publisher`,`price` from `Book` where `bookName` like '_구%';

#실습 4-23
select `bookId`,`bookName`,`publisher`,`price` from `Book` where `bookName` like '축구%' and price > 20000;

#실습 4-24
select `bookId`,`bookName`,`publisher`,`price` from `Book` order by `bookName` ;

#실습 4-25
select `bookId`,`bookName`,`publisher`,`price` from `Book` order by `price` , `bookName`;

#실습 4-26
select `bookId`,`bookName`,`publisher`,`price` from `Book` order by price desc, publisher;

#실습 4-27
select `bookId`,`bookName`,`publisher`,`price` from `Book` order by price desc limit 3 ;

#실습 4-28
select `bookId`,`bookName`,`publisher`,`price` from `Book` order by price limit 3 ;
#실습 4-29
select sum(salePrice) as '총판매액' from `Order`;

#실습 4-30
select sum(salePrice) as '총판매액', 
			avg(saleprice) as 평균값,
            min(saleprice)as 최저가,
            max(saleprice) as 최고가 
            from `Order`;
            
#실습 4-31
select count(*) as '판매건수' from `order`;

#실습 4-32
update `Book` set `bookName` = replace(bookName,'야구','농구');
select 
	`bookId`,
    replace (`bookName`,'야구','농구') as `boonName`,
    `publisher`,
    `price`

 from `Book`;


#실습 4-33
select `custid`, count(*) as 수량 from `order` where `saleprice` > 8000 group by custid having 수량 >= 2;

#실습 4-34
select * from `Customer` as a join `Order` as b on a.custId=b.custId;

#실습 4-35
select * from `Customer` as a join `Order` as b on a.custId=b.custId order by a.custId;

#실습 4-36
select a.name, b.salePrice from `Customer` as a join `order` as b on a.custId=b.custId;

#실습 4-37
select a.name, sum(salePrice) from `Customer` as a join `order` as b on a.custId=b.custId group by a.name;

#실습 4-38
select `name`, `bookName` from `Customer` as a join `order` as b on a.custId=b.custId join `Book` as c on b.bookId=c.bookId;

#실습4-39. 가격이 20,000원인 도서를 주문한 고객의 이름과 도서의 이름을 조회하시오.
SELECT `name`, `bookName` FROM `Book` AS a
JOIN `Order` AS b ON a.bookNo = b.bookNo
JOIN `Customer` AS c ON b.custNo = c.custNo
WHERE `price`=20000;

#실습4-40. 도서를 구매하지 않은 고객을 포함하여 고객의 이름과 고객이 주문한 도서의 판매가격을 조회하시오.
SELECT `name`, `salePrice` FROM `Order` AS a
RIGHT JOIN `Customer` AS b ON a.custNo = b.custNo;
#실습4-41
select `bookName` from `Book` where `price`=(select max(`price`) from `Book`);

#실습4-42
select `name` from `Customer` where `custId` not in(select distinct `custId` from `Order`);

#실습4-43
select sum(`salePrice`) as `총합` from `Order` where `custId`=(select `custId` from `Customer` where `name`='김연아');

#실습4-44. Book 테이블에 새로운 도서 ‘스포츠 의학’을 삽입하시오. 스포츠 의학은 한솔의학서적에서 출간했으며 가격은 미정이다.
INSERT INTO `Book`(`bookId`, `bookName`,`publisher`) VALUES(11, '스포츠의학','한솔의학서적');

#실습4-45. Customer 테이블에서 고객번호가 5인 고객의 주소를 ‘대한민국 부산’으로 변경하시오.
UPDATE `Customer` SET `address`='대한민국 부산' WHERE `custId`=5;

#실습4-46. Customer 테이블에서 고객번호가 5인 고객을 삭제하시오.
DELETE FROM `Customer` WHERE `custId`=5;




