-- 1. CRUD (SELECT Subquery)
-- 2. CRUD (SELECT Subquery 연습문제 1~13)
-- 3. CRUD (SELECT Subquery 연습문제 14~25)
-- ________________________________________________________________
-- ________________________________________________________________

-- --------------------------------------------------------
-- --------------------------------------------------------
-- 복습문제1) 
-- +--------+------------+-------+-------+------+
-- | DEPTNO | DNAME      | EMPNO | ENAME | SAL  |
-- +--------+------------+-------+-------+------+
-- |     20 | RESEARCH   |  7566 | JONES | 2975 |
-- |     30 | SALES      |  7698 | BLAKE | 2850 |
-- |     10 | ACCOUNTING |  7782 | CLARK | 2450 |
-- |     20 | RESEARCH   |  7788 | SCOTT | 3000 |
-- |     10 | ACCOUNTING |  7839 | KING  | 5000 |
-- |     20 | RESEARCH   |  7902 | FORD  | 3000 |
-- +--------+------------+-------+-------+------+
-- 6 rows in set (0.00 sec)

-- -- emp ,DEPT 테이블에서  급여가 2000  초과인 사원들의 부서 정보, 사원정보를 다음과 같이   조회하시오.
-- join 4가지 방법을 이용해서 조회하시오. 

select   d.DEPTNO , DNAME      , EMPNO , ENAME , SAL
from     emp e, DEPT d 
where    d.DEPTNO = e.DEPTNO and sal > 2000;

select   d.DEPTNO , DNAME      , EMPNO , ENAME , SAL
from     emp e join DEPT d 
on      d.DEPTNO = e.DEPTNO 
where   sal > 2000;

select   d.DEPTNO , DNAME      , EMPNO , ENAME , SAL
from     emp e join DEPT d 
using(DEPTNO)
where   sal > 2000;

select   DEPTNO , DNAME      , EMPNO , ENAME , SAL
from     emp e natural join DEPT d;

-- --------------------------------------------------------
-- --------------------------------------------------------
-- 복습문제2) 
-- -- emp ,DEPT 테이블에서  각 부서별 평균급여, 최대급여, 최소급여, 사원수를  다음과 같이   조회하시오.
-- -- = 등가조인을 이용하시오.
-- join 4가지 방법을 이용해서 조회하시오.
-- +--------+------------+-----------+---------+---------+-----+
-- | DEPTNO | DNAME      | AVG_SAL   | MAX_SAL | MIN_SAL | CNT |
-- +--------+------------+-----------+---------+---------+-----+
-- |     10 | ACCOUNTING | 2916.6667 |    5000 |    1300 |   3 |
-- |     20 | RESEARCH   | 2175.0000 |    3000 |     800 |   5 |
-- |     30 | SALES      | 1566.6667 |    2850 |     950 |   6 |
-- +--------+------------+-----------+---------+---------+-----+
-- 3 rows in set (0.00 sec) 

select   d.DEPTNO , DNAME      , avg(sal)`AVG_SAL`   , max(sal)`MAX_SAL` , min(sal)`MIN_SAL` , count(*)`CNT`
from     emp e, DEPT d
where    d.DEPTNO = e.DEPTNO
group by   d.DEPTNO , DNAME
order by   d.DEPTNO asc;

select   d.DEPTNO , DNAME      , avg(sal)`AVG_SAL`   , max(sal)`MAX_SAL` , min(sal)`MIN_SAL` , count(*)`CNT`
from     emp e join DEPT d
on    d.DEPTNO = e.DEPTNO
group by   d.DEPTNO , DNAME
order by   d.DEPTNO asc;

select   d.DEPTNO , DNAME      , avg(sal)`AVG_SAL`   , max(sal)`MAX_SAL` , min(sal)`MIN_SAL` , count(*)`CNT`
from     emp e join DEPT d
using(DEPTNO)
group by   d.DEPTNO , DNAME
order by   d.DEPTNO asc;

select   DEPTNO , DNAME      , avg(sal)`AVG_SAL`   , max(sal)`MAX_SAL` , min(sal)`MIN_SAL` , count(*)`CNT`
from     emp e natural join DEPT d
group by   d.DEPTNO , DNAME
order by   d.DEPTNO asc;


-- --------------------------------------------------------
-- --------------------------------------------------------
-- 복습문제3) 
-- -- emp ,DEPT 테이블에서 모든부서정보와 사원정보를 다음과 같이 부서번호, 사원이름 순으로    조회하시오.
-- -- left , right join을 이용하시오.
-- +--------+------------+-------+--------+-----------+------+
-- | DEPTNO | DNAME      | EMPNO | ENAME  | JOB       | SAL  |
-- +--------+------------+-------+--------+-----------+------+
-- |     10 | ACCOUNTING |  7782 | CLARK  | MANAGER   | 2450 |
-- |     10 | ACCOUNTING |  7839 | KING   | PRESIDENT | 5000 |
-- |     10 | ACCOUNTING |  7934 | MILLER | CLERK     | 1300 |
-- |     20 | RESEARCH   |  7876 | ADAMS  | CLERK     | 1100 |
-- |     20 | RESEARCH   |  7902 | FORD   | ANALYST   | 3000 |
-- |     20 | RESEARCH   |  7566 | JONES  | MANAGER   | 2975 |
-- |     20 | RESEARCH   |  7788 | SCOTT  | ANALYST   | 3000 |
-- |     20 | RESEARCH   |  7369 | SMITH  | CLERK     |  800 |
-- |     30 | SALES      |  7499 | ALLEN  | SALESMAN  | 1600 |
-- |     30 | SALES      |  7698 | BLAKE  | MANAGER   | 2850 |
-- |     30 | SALES      |  7900 | JAMES  | CLERK     |  950 |
-- |     30 | SALES      |  7654 | MARTIN | SALESMAN  | 1250 |
-- |     30 | SALES      |  7844 | TURNER | SALESMAN  | 1500 |
-- |     30 | SALES      |  7521 | WARD   | SALESMAN  | 1250 |
-- |     40 | OPERATIONS |  NULL | NULL   | NULL      | NULL |
-- +--------+------------+-------+--------+-----------+------+
-- 15 rows in set (0.00 sec)

select d.DEPTNO , DNAME      , EMPNO , ENAME  , JOB       , SAL
from   DEPT d   left join emp e on    d.DEPTNO = e.DEPTNO   
order by d.DEPTNO, ename asc;



select d.DEPTNO , DNAME      , EMPNO , ENAME  , JOB       , SAL
from     emp e right join DEPT d on    d.DEPTNO = e.DEPTNO   
order by d.DEPTNO, ename asc;







-- ■진행1. CRUD (SELECT Subquery)
-- [실습] 다음과 같이 데이터를 준비하시오
-- mysql> desc sub_userinfo;
-- +-------+-------------+------+-----+---------+----------------+
-- | Field | Type        | Null | Key | Default | Extra          |
-- +-------+-------------+------+-----+---------+----------------+
-- | no    | int(11)     | NO   | PRI | NULL    | auto_increment |
-- | name  | varchar(20) | NO   |     | NULL    |                |
-- | age   | int(11)     | NO   |     | NULL    |                |
-- | sex   | char(2)     | YES  |     | NULL    |                |
-- | kor   | int(11)     | YES  |     | NULL    |                |
-- | eng   | int(11)     | YES  |     | NULL    |                |
-- | math  | int(11)     | YES  |     | NULL    |                |
-- | ban   | char(2)     | YES  |     | NULL    |                |
-- | sns   | char(2)     | YES  |     | y       |                |
-- +-------+-------------+------+-----+---------+----------------+


-- mysql> select * from sub_userinfo;
-- +----+--------+-----+------+------+------+------+------+------+
-- | no | name   | age | sex  | kor  | eng  | math | ban  | sns  |
-- +----+--------+-----+------+------+------+------+------+------+
-- |  1 | first  |  11 | NULL |  100 |  100 |   99 | A    | n    |
-- |  2 | second |  22 | m    |   89 |   92 |   78 | B    | y    |
-- |  3 | third  |  33 | m    |   90 |   92 |   97 | A    | y    |
-- |  4 | fourth |  44 | f    |   40 |   42 |   67 | C    | n    |
-- |  5 | fifth  |  55 | f    |   89 |   86 |   99 | B    | y    |
-- |  6 | sixth  |  66 | m    |   10 |   20 |   44 | C    | n    |
-- +----+--------+-----+------+------+------+------+------+------+

-- 6 rows in set (0.00 sec)

use mbasic;
CREATE TABLE sub_userinfo
( no  int not null  auto_increment primary key ,
  name varchar(20)  not null ,
  age  int not null ,
  sex  char(2) ,
  kor  int ,
  eng  int   ,
  math int   ,
  ban  char(2),
  sns  char(2) default 'y' );

desc sub_userinfo;

insert into  sub_userinfo  (name, age , sns , kor , eng, math , ban)
values  ('first'  , 11  , 'n' , 100 , 100 , 99 , 'A');
insert into  sub_userinfo  (name, age, sex , kor , eng, math , ban)
values  ('second' , 22 , 'm' , 89 , 92 , 78 , 'B');
insert into  sub_userinfo  (name, age, sex , kor , eng, math , ban)
values  ('third'  , 33 , 'm' , 90, 92,97,'A');
insert into  sub_userinfo  (name, age, sex , sns , kor , eng, math , ban)
values  ('fourth' , 44 , 'f' , 'n' , 40,42,67 , 'C');
insert into  sub_userinfo  (name, age, sex , kor , eng, math , ban)
values  ('fifth'  , 55 , 'f' , 89 , 86 , 99 , 'B');
insert into  sub_userinfo  (name, age, sex, sns , kor , eng, math , ban)
values  ('sixth'  , 66 , 'm', 'n' , 10,20,44 , 'C');


select * from sub_userinfo;


-- ------------------------------------------------------------
-- ------------------------------------------------------------ [QUESTION]

-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- BASIC1. 평균나이 이상인 레코드를 추출하시오.
-- +----+--------+-----+------+------+------+------+------+------+
-- | no | name   | age | sex  | kor  | eng  | math | ban  | sns  |
-- +----+--------+-----+------+------+------+------+------+------+
-- |  4 | fourth |  44 | f    |   40 |   42 |   67 | C    | n    |
-- |  5 | fifth  |  55 | f    |   89 |   86 |   99 | B    | y    |
-- |  6 | sixth  |  66 | m    |   10 |   20 |   44 | C    | n    |
-- +----+--------+-----+------+------+------+------+------+------+
-- 3 rows in set (0.02 sec)

-- select *
-- from   sub_userinfo
-- where  age >= 평균나이

select *
from   sub_userinfo
where  age >= ( select avg(age)  from sub_userinfo );

select * from sub_userinfo;

-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- BASIC2. first와 같은반친구들의 국어, 영어, 수학점수를 추출하시오.
-- +------+-------+------+------+------+
-- | ban  | name  | kor  | eng  | math |
-- +------+-------+------+------+------+
-- | A    | first |  100 |  100 |   99 |
-- | A    | third |   90 |   92 |   97 |
-- +------+-------+------+------+------+
-- 2 rows in set (0.00 sec)

-- select ban  , name  , kor  , eng  , math
-- from   sub_userinfo
-- where  ban= (first 반);

select ban  , name  , kor  , eng  , math
from   sub_userinfo
where  ban= (select ban from sub_userinfo where name = 'first');


 

-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- BASIC3. first와 같은반친구들의  국어평균점수, 영어평균점수, 수학평균점수를 추출하시오.
-- +------+---------+---------+---------+
-- | ban  | kor     | eng     | math    |
-- +------+---------+---------+---------+
-- | A    | 95.0000 | 96.0000 | 98.0000 |
-- +------+---------+---------+---------+

select ban  , avg(kor)`kor`  , avg(eng)`eng`  , avg(math)`math`
from   sub_userinfo
where  ban= (select ban from sub_userinfo where name = 'first')
group by  ban;
-- order by
-- limit

select * from sub_userinfo;

-- ■진행2. CRUD (SELECT Subquery 연습문제1~13)
-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-1
-- -- emp 테이블에서  사원이름이 JONES 인 사원데이터를  조회하시오.
-- +------+
-- | SAL  |
-- +------+
-- | 2975 |
-- +------+
-- 1 row in set (0.00 sec)

select * from emp;

select sal
from   emp
where  ename = 'JONES';
-- group by
-- order by
-- limit

-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-2
-- -- emp 테이블에서  급여가 2975보다 높은 사원데이터를  조회하시오.
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | empno | ename | job       | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7788 | SCOTT | ANALYST   | 7566 | 1987-04-19 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- 3 rows in set (0.00 sec)

select *
from   emp
where  sal > 2975;
-- group by
-- order by
-- limit


-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-3
-- -- emp 테이블에서  사원이름이 JONES의 급여보다 높은 급여를 받는  사원데이터를  조회하시오.
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | empno | ename | job       | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7788 | SCOTT | ANALYST   | 7566 | 1987-04-19 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- 3 rows in set (0.00 sec)

select *
from   emp
where  sal > (select sal from emp where ename = 'JONES');

-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-4
-- -- emp 테이블에서   scott보다 빨리 입사한 사원목록을 조회하시오.
-- +-------+--------+-----------+------+------------+------+------+--------+
-- | empno | ename  | job       | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- 12 rows in set (0.00 sec)

select *
from   emp
where  hiredate < (select hiredate from emp where ename = 'scott');

select * from emp;
-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-5
-- -- emp 테이블에서  20번 부서에 속한 사원중
-- -- 전체 사원의 평균급여보다 높은 급여를 받는 사원정보와 소속부서 정보를 조회하시오.
select EMPNO , ENAME , JOB     , SAL  , d.DEPTNO , DNAME    , LOC
from   emp e join dept d on e.deptno = d.deptno
where  e.deptno=20 and sal > (select avg(sal) from emp)
order by e.empno desc;
-- +-------+-------+---------+------+--------+----------+--------+
-- | EMPNO | ENAME | JOB     | SAL  | DEPTNO | DNAME    | LOC    |
-- +-------+-------+---------+------+--------+----------+--------+
-- |  7902 | FORD  | ANALYST | 3000 |     20 | RESEARCH | DALLAS |
-- |  7788 | SCOTT | ANALYST | 3000 |     20 | RESEARCH | DALLAS |
-- |  7566 | JONES | MANAGER | 2975 |     20 | RESEARCH | DALLAS |
-- +-------+-------+---------+------+--------+----------+--------+
-- 3 rows in set (0.00 sec)

select EMPNO , ENAME , JOB     , SAL  , d.DEPTNO , DNAME    , LOC
from   emp e, dept d
where  e.sal > (select avg(sal) from emp where d.deptno = 20);



-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-6
-- -- emp 테이블에서  부서번호가 20 또는 30인 사원정보를  조회하시오.
-- +-------+--------+----------+------+------------+------+------+--------+
-- | empno | ename  | job      | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7788 | SCOTT  | ANALYST  | 7566 | 1987-04-19 | 3000 | NULL |     20 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1987-05-23 | 1100 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+--------+----------+------+------------+------+------+--------+
-- 11 rows in set (0.00 sec)

select *
from   emp
where  deptno=20 or deptno=30;

select *
from   emp
where  deptno in (20, 30);


select * from emp;
--  --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-7
-- -- emp 테이블에서  부서번호 별로 최대급여를 조회하시오.
-- +----------+
-- | MAX(SAL) |
-- +----------+
-- |     5000 |
-- |     3000 |
-- |     2850 |
-- +----------+
-- 3 rows in set (0.00 sec)

select deptno, MAX(SAL)
from   emp
group by deptno
order by MAX(SAL) desc;

select deptno, MAX(SAL)`max`
from   emp
group by deptno
order by max desc;

-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-8
-- -- emp 테이블에서  각 부서별 최고 급여와 동일한 급여를 받는 사원정보를   조회하시오.
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | empno | ename | job       | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1987-04-19 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- 4 rows in set (0.00 sec)

select   * 
from     emp 
where    sal in (select max(sal) from emp where deptno);
-- group by deptno;

-- select    *
-- from      emp
-- where     sal   여러개조건 in  (  각 부서별 최고 급여  )

select   deptno , max(sal)`부서최고급여`
from     emp 
-- where    sal in (select max(sal) from emp where deptno)
group by deptno;
-- having
-- order by
-- limit

-- 2)
select   deptno , max(sal)`부서최고급여`
from     emp 
group by deptno;

-- 3)
select   *
from     emp
where  (deptno, sal) in ( select   deptno, max(sal) from emp  group by deptno );
                           
select * from   emp ;





-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------
-- --------------------------------------------------------
-- 참고))))

-- [기본]  ANY,ALL
-- [기본]  ANY,ALL
-- [SUBQUERY]
-- - 메인쿼리안에 또다른 쿼리가 있으것
-- - 반드시 서브쿼리를 괄호로 묶는다
-- - 메인쿼리보다 서브쿼리가 먼저 실행되어 실행된 결과를 메인쿼리의 조건으로 사용한다.
-- - 서브리의 결과가 한개이상이 반환될때  in, ANY(SOME), ALL , EXISTS 을 사용할수 있다.
-- -                        한개일때                  = 을 사용한다.

-- ##  다중행연산자
-- in, ANY(SOME), ALL , EXISTS

-- 1. IN               : 메인쿼리의 데이터가 서브쿼리의 결과중 ( 하나라도 일치한데이터가 있다면 TRUE )
-- 2. ANY, SOME : 메인쿼리의 조건식을 만족하는 서브쿼리의 결과가 하나이상이면 TRUE
-- 3. ALL             : 메인쿼리의 조건식을 서브쿼리의 결과모두가 만족하면 TRUE
-- 4. EXISTS        :  서브쿼리의 결과가 존재하면 TRUE


-- ANY  :  하나라도 일치하면 참
--     컬럼명   <   ANY (1,2,3)    --   최대값보다 작다                 |(1)   |(2)   |(3)  ★
--     컬럼명   >   ANY (1,2,3)    --   최소값보다  크다              ★ |(1)   |(2)   |(3)

-- ALL    :   모두일치
--     컬럼명   <   ALL (1,2,3)    --   최소값보다  작다               ★ |(1)   |(2)   |(3)
--     컬럼명   >   ALL (1,2,3)    --   최대값보다 크다                  |(1)   |(2)   |(3)★


-- test용 만드는거와 동시에 데이터 추가
create table  atest   as         select   1  num  from  dual
                    union all    select   2       from  dual   
                    union all    select   3       from  dual   
                    union all    select   4       from  dual   
                    union all    select   5       from  dual   
                    union all    select   6       from  dual;

-- 			    select   1  num  from  dual
-- union all    select   2       from  dual   
-- union all    select   3       from  dual   
-- union all    select   4       from  dual   
-- union all    select   5       from  dual   
-- union all    select   6       from  dual;


select * from atest;

-- Q1) 1,2,3,4
select  num  from atest  where num in(3,4,5); -- 3,4,5    

select   num 
from     atest  
where    num < any(    select num  from atest  where num in(3,4,5)    )   -- 1줄  5보다 작다
order by num;

-- Q2) 4,5,6
select   num 
from     atest  
where    num > any(    select num  from atest  where num in(3,4,5)    )  -- 1줄   3보다 크다
order by num; 


-- Q3) 1,2
select   num 
from     atest  
where    num < all(    select num  from atest  where num in(3,4,5)    )  -- all 모두  3보다 작다
order by num;


-- Q4) 
select   num 
from     atest  
where    num > all(    select num  from atest  where num in(3,4,5)    )  -- all 모두  5보다 크다   
order by num;




-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-9
-- -- emp 테이블에서  ANY를 이용하여 각 부서별 최고 급여와 동일한 급여를 받는 사원정보를   조회하시오.
-- -- ※ ANY , SOME 연산자는 서브쿼리가 반환한 여러결과값 중
-- -- 메인쿼리와 조건식을 사용한 결과가 하나라도 TRUE라면 메인쿼리조건식을 TRUE로 반환해주는 연산자
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | empno | ename | job       | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1987-04-19 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- 4 rows in set (0.00 sec)

-- select    * 
-- from      emp
-- where     sal = ANY( 각 부서별 최고 급여와 동일한 급여 )

-- in (subquery)     -  서브쿼리 결과 집합 중 하나와 같으면 true  ( 값이 집합안에 있는지 확인)
-- any(subquery) = some(subquery)     서브쿼리 결과 집합 중 하나라도 같으면 true


select  *
from    emp
where   (deptno, sal) = any(select deptno, max(sal) from emp group by deptno );


-- in (subquery) - 서브쿼리 결과 집합 중 하나와 같으면 true (값이 집합안에 있는지 확인)
-- any (subquery) = some (subquery)   서브쿼리 결과 집합 중 하나라도 같으면 true 

-- 'in' 와 '= any'



-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-10
-- -- emp 테이블에서 SOME를 이용하여 각 부서별 최고 급여와 동일한 급여를 받는 사원정보를   조회하시오.
-- -- ※ ANY , SOME 연산자는 서브쿼리가 반환한 여러결과값 중
-- -- 메인쿼리와 조건식을 사용한 결과가 하나라도 TRUE라면 메인쿼리조건식을 TRUE로 반환해주는 연산자
-- +-------+-------+-----------+------+------------+------+------+--------+
-- | empno | ename | job       | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- |  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7788 | SCOTT | ANALYST   | 7566 | 1987-04-19 | 3000 | NULL |     20 |
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- +-------+-------+-----------+------+------------+------+------+--------+
-- 4 rows in set (0.00 sec)

-- select    * 
-- from      emp
-- where     sal = some( 각 부서별 최고 급여와 동일한 급여 )

-- in (subquery)     -  서브쿼리 결과 집합 중 하나와 같으면 true  ( 값이 집합안에 있는지 확인)
-- any(subquery) = some(subquery)     서브쿼리 결과 집합 중 하나라도 같으면 true

select  *
from    emp
where   (deptno, sal) = some(select deptno, max(sal)`부서최고급여` from emp group by deptno );


-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-11
-- -- emp 테이블에서  부서번호가 30인 사원의 급여를  조회하시오.

-- select sal
-- from   emp
-- where  부서번호가 30인 사원

select  sal
from    emp
where  deptno=30;
-- +------+
-- | SAL  |
-- +------+
-- | 1600 |
-- | 1250 |
-- | 1250 |
-- | 2850 |
-- | 1500 |
-- |  950 |
-- +------+
-- 6 rows in set (0.00 sec)



-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-12
-- -- emp 테이블에서  ANY를 이용하여 각 부서별 최고 급여와 동일한 급여를 받는 사원정보를   조회하시오.
-- -- ※ ANY , SOME 연산자는 서브쿼리가 반환한 여러결과값 중
-- -- 메인쿼리와 조건식을 사용한 결과가 하나라도 TRUE라면 메인쿼리조건식을 TRUE로 반환해주는 연산자

-- +-------+--------+----------+------+------------+------+------+--------+
-- | empno | ename  | job      | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+--------+----------+------+------------+------+------+--------+
-- |  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800 | NULL |     20 |
-- |  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950 | NULL |     30 |
-- |  7876 | ADAMS  | CLERK    | 7788 | 1987-05-23 | 1100 | NULL |     20 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- +-------+--------+----------+------+------------+------+------+--------+
-- 9 rows in set (0.00 sec)
-- select  *
-- from    emp
-- where   sal <    ______ (   30번 부서의  )    # 최고 급여보다 작은 급여  / sal <  any(1,2,3)  최대보다 작다  #######

select  *
from    emp
where   sal < any(select sal from emp where deptno=30  )
order by sal, empno asc;

-- 1)
select sal from emp where deptno=30 order by sal asc;

-- 2) in /  = any  /  = some
-- sal < any(950, 125, 1500 , 1600 , 2850)   any 한줄
-- sal > any(950, 125, 1500 , 1600 , 2850)



-- --------------------------------------------------------
-- --------------------------------------------------------
-- -- 연습문제-13
-- -- emp 테이블에서  30번 부서 사원들의 최소급여보다 많은 급여를 받는  사원데이터를  조회하시오.
-- +-------+--------+-----------+------+------------+------+------+--------+
-- | empno | ename  | job       | mgr  | hiredate   | sal  | comm | deptno |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 | 3000 | NULL |     20 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 | 1100 | NULL |     20 |
-- +-------+--------+-----------+------+------------+------+------+--------+
-- 12 rows in set (0.00 sec)

-- 30번 부서 사원들의 최소급여보다 많은 급여를 받는  사원데이터
--  any 1개라도 맞으면 참   sal >  any(1,2,3) 최대보다 작다  최소급여보다 크다 #######
--  all 모두 맞아야 참     sal >  all(1,2,3)  최대보다 크다 
-- select   *
-- from     emp  
-- whwere   sal >   ____(30번 부서의)

select sal from emp where deptno=30; -- 950, 125, 1500 , 1600 , 2850

select  *
from    emp
where   sal > any(select sal from emp where deptno=30  )
order by sal desc;


insert            : insert into userinfo (email, age) values (? , ?); 
select(전체)       : select * from userinfo;
select(해당번호읽기)  : select * from userinfo where no=1; 
update(해당번호 수정) : update userinfo set email = 'aaa@email.com', age = 30 where no = 1; 
delete(해당번호삭제)  : delete from userinfo where no = 1;

select now();

desc userinfo_e;

CREATE TABLE userinfo_e (
    no INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    age INT NULL,
    PRIMARY KEY (no)
);
select*from userinfo_e;

update userinfo_e
set age = 1
where no = 2;

CREATE TABLE mvcboard2 (
    bno INT NOT NULL AUTO_INCREMENT,
    bname VARCHAR(20) NOT NULL,
    bpass VARCHAR(50) NOT NULL,
    btitle VARCHAR(1000) NOT NULL,
    bcontent TEXT NOT NULL,
    bdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    bhit INT NOT NULL DEFAULT 0,
    bip VARCHAR(50) NOT NULL,
    PRIMARY KEY (bno)
);

select*from mvcboard1;

select*from mvcboard2;

desc mvcboard2;

select now();

alter table mvcboard2 add bfile varchar(500) default 'the703.png' not null;

alter table mvcboard2 
modify column bfile varchar(500) default 'the703.png' null;

insert   into mvcboard2 (bname , bpass , btitle ,  bcontent , bip ,  bfile) 
select   bname , bpass , btitle ,  bcontent , bip ,  bfile  from  mvcboard2;

-- Paging
-- 최신글 기준으로 10개씩 가져오기
select * from mvcboard2 order by bno desc limit 0, 10;  -- 어디서부터 , 몇개
select * from mvcboard2 order by bno desc limit 10, 10;  -- 그 다음 10개부터 , 10개
select * from mvcboard2 order by bno desc limit 20, 10;

-- 전체 개시글 갯수
select count(*) from mvcboard2;
update mvcboard2 
set bfile = null;


select*from users;
desc users;

set sql_safe_updates = 0;
update mvcboard2 set bfile = null;
set sql_safe_updates = 1;

-- 1. 안전모드 해제
set sql_safe_updates = 0;

-- 2. 중복된 aaa@gmail.com 데이터를 싹 지우기
delete from users where email = 'aaa@gmail.com';

-- 3. 안전모드 다시 켜기
set sql_safe_updates = 1;



insert into users (nickname, bpass, email, mobile, bip)
values            ( #{nickname}, #{bpass}, #{email}, #{mobile}, #{bip} );

select count(*) from users where email=#{email}  and bpass=#{bpass};
select       *  from users where uno=#{uno};
select email    from users where email=#{email};

select*from users;

insert into users (nickname, bpass, email, mobile, bip)  
values ('first', '1111', 'first@gmail.com', '010-1111-1111', '192.168.40.46');

insert into users (nickname, bpass, email, mobile)  
values ('first', '1111', 'first@gmail.com', '010-1111-1111');

CREATE TABLE authorities (
    Field VARCHAR(50) NOT NULL,
    auto VARCHAR(50) NOT NULL
);

desc authorities;

alter table authorities change field email varchar(50) not null;

select*from authorities;

insert into authorities (email, auth) 
values ('first@gmail.com', 'ROLE_MEMBER');

insert into authorities (email, auth) 
values (#{email}, #{auth});

select u.email, u.bpass, a.auth
from users u left join authorities a on u.email = a.email
where u.email = 'first@gmail.com';

alter table authorities change auto auth varchar(50) not null;