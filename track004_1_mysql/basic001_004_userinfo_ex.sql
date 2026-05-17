-- STEP1) 
-- 1.  데이터베이스 언어 - 다음과 같은형식으로 빈칸 채우기
-- DDL(     정의어        )  CREATE, ALTER, DROP   
-- DML(   조작어          )   INSERT, SELECT, UPDATE, DELETE
-- DCL(  제어어   )  GRANT , REVOKE


-- STEP2) 
-- Q1. userinfo 테이블을 복사해서 userinfo_ex 테이블을 만드시오.

-- mysql> desc userinfo_ex;
-- +-------+--------------+------+-----+---------+----------------+
-- | Field | Type         | Null | Key | Default | Extra          |
-- +-------+--------------+------+-----+---------+----------------+
-- | no    | int          | NO   | PRI | NULL    | auto_increment |
-- | name  | varchar(100) | NO   |     | NULL    |                |
-- | age   | int          | NO   |     | NULL    |                |
-- +-------+--------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)

-- mysql> select * from userinfo_ex;
-- +----+--------+-----+
-- | no | name   | age |
-- +----+--------+-----+
-- |  1 | first  |  11 |
-- |  2 | second |  22 |
-- |  3 | third  |  33 |
-- |  4 | fourth |  44 |
-- +----+--------+-----+
create table userinfo_ex(
	no int auto_increment primary key,
    name varchar(100) not null,
    age int not null
);

desc userinfo_ex;

create table userinfo (
	no int auto_increment primary key,
    name varchar(100) not null,
    age int not null
);

insert into userinfo (name, age ) values
('first', 11),
('second', 22),
('third', 33),
('fourth', 44);

insert into userinfo_ex select * from userinfo;

desc userinfo_ex; -- userinfo_ex의 기본 정보

select * from userinfo_ex; -- userinfo_ex의 기본 table 

show databases; -- database 전체 보기

-- mbasic의 table을 볼 때
use mbasic;
show tables;

-- Q2. userinfo_re1 에  다음과 같이 데이터 추가 
-- mysql> select * from userinfo_re1;
-- +----+--------+-----+
-- | no | name   | age |
-- +----+--------+-----+
-- |  1 | first  |  11 |
-- |  2 | second |  22 |
-- |  3 | third  |  33 |
-- |  4 | fourth |  44 |
-- |  5 | fifth  |  50 |
-- |  6 | sixth  |  66 |
-- +----+--------+-----+

use mbasic;

create table userinfo_re1(
	no int auto_increment primary key,
    name varchar(100) not null,
    age int not null
);

insert into userinfo_re1 select * from userinfo_ex;

insert into userinfo_re1 ( name , age ) values
( 'fifth' , 50),
( 'six' , 66); 

select * from userinfo_ex; -- userinfo_ex의 기본 table 
select * from userinfo_re1;


-- Q3. userinfo_re1 에 데이터 수정
-- mysql> select * from userinfo_re1;
-- +----+--------+-----+
-- | no | name   | age |
-- +----+--------+-----+
-- |  1 | first  |  11 |
-- |  2 | second |  22 |
-- |  3 | third  |  33 |
-- |  4 | fourth |  44 |
-- |  5 | fifth    |  55 |   ← age 55로 수정
-- |  6 | six   |  66 |       ← name sixth로 수정
-- +----+--------+-----+


update userinfo_re1 set age = 55 where no = 5;

update userinfo_re1 set name = 'sixth' where no = 6;

select * from userinfo_re1;

-- Q4. userinfo_re1 에 데이터 삭제
-- mysql> select * from userinfo_re1;
-- +----+--------+-----+
-- | no | name   | age |
-- +----+--------+-----+
-- |  1 | first  |  11 |
-- |  2 | second |  22 |
-- |  3 | third  |  33 |
-- |  4 | fourth |  44 | 
-- +----+--------+-----+

delete from userinfo_re1 where no = 5;

delete from userinfo_re1 where no = 6;

select * from userinfo_re1;
