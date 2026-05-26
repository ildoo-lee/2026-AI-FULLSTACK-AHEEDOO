-- create table if_userinfo(
-- no int not null primary key auto_increment,
-- name varchar(100) not null,
-- age int default 0,
-- sex char(1),
-- sns char(1)
-- );



-- mysql>
-- mysql> desc users;
-- +----------+--------------+------+-----+-------------------+-------------------+
-- | Field    | Type         | Null | Key | Default           | Extra             |
-- +----------+--------------+------+-----+-------------------+-------------------+
-- | uno      | int          | NO   | PRI | NULL              | auto_increment    |
-- | nickname | varchar(20)  | NO   |     | NULL              |                   |
-- | bpass    | varchar(50)  | NO   |     | NULL              |                   |
-- | email    | varchar(100) | NO   |     | NULL              |                   |
-- | mobile   | varchar(50)  | NO   |     | NULL              |                   |
-- | udate    | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- | bip      | varchar(50)  | NO   |     | NULL              |                   |
-- +----------+--------------+------+-----+-------------------+-------------------+
-- 7 rows in set (0.00 sec)

-- mysql>
-- mysql>
desc users;

select *  from users;

create table users(
uno int not null primary key auto_increment,
nickname varchar(20) not null,
bpass varchar(50) not null,
email varchar(100) not null,
mobile varchar(50) not null,
udate timestamp not null default current_timestamp,
bip varchar(50) not null
);

use mbasic;

-- insert
insert into users (nickname , bpass , email , mobile , bip)
values            ('aaa' , '1111' , 'aaa@gmail.com' , '010-1111-1111' , '192.168.0.1');

-- select
select count(*) from users where bpass='1111' and email='aaa@gmail.com';
select       *  from users where bpass='1111' and email='aaa@gmail.com'; 



