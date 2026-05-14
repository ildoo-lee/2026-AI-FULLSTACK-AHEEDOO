#### 1. Mysql?
> 1. mysql why?
1. DBMS
-  Database Management System
-  데이터베이스를 관리해주는 시스템

2. Database?
- Data + Base
- Data  1.데이터(수집된 사실, 값)   2. 정보(의미 부여)
- Data(의미를 제공하는 데이터) + Base( 체계와 규격을 가진 집합)

Q1. 다음 빈칸을 채우시오
      1.     (#1 데이터 )는  수집된 사실이나 값을 의미하고
      2.     (#2 정보   )는  데이터들 중에서 의미를 제공하는 데이터를 의미

3. Database 종류
- Oracle , Mysql , MSSql,,,,,,


> 2. mysql Setting
1. MYSQL 다운로드
       https://dev.mysql.com/
       -Download
       - MySQL Community Server

2. MYSQL 설치
3. MYSQL 환경설정 (1) path
4. MYSQL 환경설정 (2) utf-8

#### 2. RDBMS

> 1. RDBMS(Relational Datase Management System) 
- 관계형 데이터베이스 관리 시스템
- 테이블들의 관계

> 2. RDBMS 구성요소
- 개체(Entity : Table)
- 관계 (Relationship)
- 속성 (Attribute : 필드)

  ※ 스키마 - 데이터베이스 구조와 제약조건을 명세정의
     외부스키마 = 사용자뷰
     개념스키마 = 전체적인뷰
     내부스키마 = 저장스키마

  ※ 데이터베이스 설계단계
   #1. 개념적설계 - 요구사항분석 후 개념적 설계 ERD 
   (집을 어떻게? 방몇개, 주방어디,,, 거실은 얼마나 크게)
   
   #2. 논리적설계 - ERD를 이용하여 데이터베이스 스키마를 설계
   (방 = 테이블, 사람 = 엔티티, 관계 = 외래키)

   #3. 물리적설계 - 테이블 저장구조 설계 ( mysql,oracle,,,,)
    ( 실제건축자제로 만들기 - mysql, oracle  )



> 3. 데이터베이스 언어
1. 정의어 (DDL) DDL = Data Definition Language (데이터 정의어)
CREATE, ALTER, DROP   → CAD

2. 조작어 (DML) DML = Data Manipulation Language (데이터 조작어)
INSERT, SELECT, UPDATE, DELETE  → CRUD    

3. 제어어 (DCL) DCL = Data Control Language (데이터 제어어)
GRANT , REVOKE



> 4. [실습] Database 만들기

1. 만들기 : create database db명

2. 확인 :   show   databases

3. 삭제 (복구X) : drop  database  db명

4. DB사용 : use   db명

1) 접속

mysql -uroot -p
1234

2) mysql

> 5. [연습] 
1. db명 : test , mbasic , db703 3개 db만들기
2. db만들어진것 확인
3. db703 삭제

mysql> create database test;
Query OK, 1 row affected (0.01 sec)

mysql> create database mbasic;
Query OK, 1 row affected (0.01 sec)

mysql> create database db703;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| db703              |
| information_schema |
| mbasic             |
| mysql              |
| performance_schema |
| sys                |
| test               |
+--------------------+
7 rows in set (0.00 sec)

mysql> drop database test;
Query OK, 0 rows affected (0.01 sec)

mysql> drop database mbasic;
Query OK, 0 rows affected (0.01 sec)

mysql> drop database db703;
Query OK, 0 rows affected (0.01 sec)

mysql> create database test;
Query OK, 1 row affected (0.01 sec)

mysql> create database mbasic;
Query OK, 1 row affected (0.00 sec)


1. MySQL은 _관계형 데이터베이스_ 관리 시스템(DBMS)이다.

2. (#1 _데이터_)는 수집된 사실이나 값을 의미하고 (#2 _정보_)는 의미를 제공하는 데이터를 의미한다.

3. 대표적인 데이터베이스 종류에는 _Oracle_, _Mysql_, _MSSql_ 등이 있다.

4. RDBMS는 _Relational_ Database Management System의 약자이다.

5. RDBMS의 구성요소는   _개체(Entity : Table)_, _관계 (Relationship)_, _속성 (Attribute : 필드)_ 

6. 데이터베이스 언어
DDL(  정의어 )  CREATE, ALTER, DROP 
DML(  조작어 ) _INSERT_, _SELECT_, _UPDATE_ , _DELETE_ 
DCL(  제어어 ) _GRANT_, _REVOKE_

7. 데이터베이스  mbasic, 를 생성하는 SQL 명령어를 작성하시오.
create database mbasic;

8.  생성된 데이터베이스 목록을 확인하는 SQL 명령어를 작성하시오.
show databases;

9. 데이터베이스 db703을 삭제하는 SQL 명령어를 작성하시오.
drop database db703;


#### 3. 테이블

1. RDBMS(Relational Data Management System)
- 관계형 데이터베이스
- 테이블들의 관계
- 속성(필드) 연결

2. 테이블 만들기 (집안의 방, 가방안의 분류표)
DDL (정의:create, alter, drop) , DML(조작:), DCL(제어:)
----------------------------------------------
CREATE TABLE table명(
   필드1 자료형 옵션,
   필드2 자료형 옵션
)
----------------------------------------------
자료형 : 
    1. 숫자 : int( 정수, 1,2,3), double(실수, 1.23)
    2. 문자 : char(고정, 남/여), varchar(가변, abc, abcd, abcde)
    3. 날짜 : date, datetime

옵션 :
    필수입력 - not null
    숫자자동증가 - auto_increment
    기본키 - primary key

create table t1(
   name varchar(100)  not null,
   age  int
);

[실습1]
create table t1(
   name varchar(100) not null
   age int
);
show table;  ---테이블목록확인
desc t1;   --- 구조확인


create table t11(
   no int    not   null,
   name  varchar(30) not mull
);

create table t12(
   bookid int           not null   -- 빈 것 안돼!!!
   title varchar(100)   not null 
);

show tables;
desc t12;   --- 구조확인







※ ERROR 1046 (3D000): No database selected
use db명

mysql> show databases;
mysql> use mbasic;
Database changed
mysql> status              -- 상태확인
mysql>create table t1(
   name varchar(100)  not null,
   age  int
);

Query OK, 0 rows affected (0.03 sec)

mysql> show tables;   -- 전체목록 확인
+------------------+
| Tables_in_mbasic |
+------------------+
| t1               |
+------------------+
1 row in set (0.00 sec)

mysql> desc t1; -- 구조확인
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | NO   |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

※ 참고사항) not null 필수입력
mysql> insert into t1 (age) values (1);
ERROR 1364 (HY000): Field 'name' doesn't have a default value (값넣어!)

mysql> insert into t1 (name, age) values ('aaa', 1);
Query OK, 1 row affected (0.00 sec)

mysql> insert into t1 (name) values ('bbb');
Query OK, 1 row affected (0.00 sec)

mysql> select * from t1;
+------+------+
| name | age  |
+------+------+
| aaa  |    1 |
| bbb  | NULL |
+------+------+
2 rows in set (0.00 sec)




[실습2] auto_increment (숫자 자동증가), primary key (기본키)

create table t2(
   jumin int not null auto_increment primary key,
   name  varchar(100) not null,
   age   int 
);

mysql> create table t2(
    ->    jumin int not null auto_increment primary key,
    ->    name  varchar(100) not null,
    ->    age   int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc t2;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| jumin | int          | NO   | PRI | NULL    | auto_increment |
| name  | varchar(100) | NO   |     | NULL    |                |
| age   | int          | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> show tables;
+------------------+
| Tables_in_mbasic |
+------------------+
| t1               |
| t2               |
+------------------+
2 rows in set (0.00 sec)



mysql> create table coffee(cno int not null primary key, cname varchar(50) not null, cprice int not null);
Query OK, 0 rows affected (0.02 sec)

mysql> desc coffee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| cno    | int         | NO   | PRI | NULL    |       |
| cname  | varchar(50) | NO   |     | NULL    |       |
| cprice | int         | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> create table milk(
    ->
    -> mno int not null primary key,
    -> mname varchar(50) not null,
    -> mprice int not null,
    -> mnum int not null,
    -> mtotal int not null);
Query OK, 0 rows affected (0.02 sec)

mysql> desc milk;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| mno    | int         | NO   | PRI | NULL    |       |
| mname  | varchar(50) | NO   |     | NULL    |       |
| mprice | int         | NO   |     | NULL    |       |
| mnum   | int         | NO   |     | NULL    |       |
| mtotal | int         | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)


mysql> create table emp(
    -> empno int(11) not null auto_increment primary key,
    -> ename varchar(20),
    -> job varchar(20),
    -> mgr int(11),
    -> hiredate date,
    -> sal int(11),
    -> comm int(11),
    -> deptmo int(11));
Query OK, 0 rows affected, 5 warnings (0.02 sec)

mysql> desc emp;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| empno    | int         | NO   | PRI | NULL    | auto_increment |
| ename    | varchar(20) | YES  |     | NULL    |                |
| job      | varchar(20) | YES  |     | NULL    |                |
| mgr      | int         | YES  |     | NULL    |                |
| hiredate | date        | YES  |     | NULL    |                |
| sal      | int         | YES  |     | NULL    |                |
| comm     | int         | YES  |     | NULL    |                |
| deptmo   | int         | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> create table salagrade(
    -> grade int(11) not null auto_increment primary key,
    -> losal int(11),
    -> hisal int(11)
    -> );
Query OK, 0 rows affected, 3 warnings (0.02 sec)

mysql> desc dept;
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| deptno | int         | NO   | PRI | NULL    | auto_increment |
| dname  | varchar(20) | NO   |     | NULL    |                |
| loc    | varchar(20) | NO   |     | NULL    |                |
+--------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> desc salagrade;
+-------+------+------+-----+---------+----------------+
| Field | Type | Null | Key | Default | Extra          |
+-------+------+------+-----+---------+----------------+
| grade | int  | NO   | PRI | NULL    | auto_increment |
| losal | int  | YES  |     | NULL    |                |
| hisal | int  | YES  |     | NULL    |                |
+-------+------+------+-----+---------+----------------+
3 rows in set (0.00 sec)


mysql> create table score(
    -> sno int(11) not null auto_increment primary key,
    -> sname varchar(20) not null,
    -> sjava int(11) not null,
    -> sjsp int(11) not null,
    -> sspring int(11) not null,
    -> sproject int(11) not null,
    -> stotal int(11),
    -> ssavg int(11),
    -> semail varchar(50) );
Query OK, 0 rows affected, 7 warnings (0.03 sec)

mysql> desc score;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| sno      | int         | NO   | PRI | NULL    | auto_increment |
| sname    | varchar(20) | NO   |     | NULL    |                |
| sjava    | int         | NO   |     | NULL    |                |
| sjsp     | int         | NO   |     | NULL    |                |
| sspring  | int         | NO   |     | NULL    |                |
| sproject | int         | NO   |     | NULL    |                |
| stotal   | int         | YES  |     | NULL    |                |
| ssavg    | int         | YES  |     | NULL    |                |
| semail   | varchar(50) | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
9 rows in set (0.00 sec)

mysql> show tables;
+------------------+
| Tables_in_mbasic |
+------------------+
| coffee           |
| dept             |
| emp              |
| milk             |
| salagrade        |
| score            |
| t1               |
| t2               |
+------------------+
8 rows in set (0.00 sec)



ALTER

mysql> create table userinfo(
    -> no int not null primary key auto_increment,
    -> name varchar(100) not null,
    -> age int not null);
Query OK, 0 rows affected (0.02 sec)


1. 테이블 준비
mysql> desc userinfo;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| no    | int          | NO   | PRI | NULL    | auto_increment |
| name  | varchar(100) | NO   |     | NULL    |                |
| age   | int          | NO   |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

