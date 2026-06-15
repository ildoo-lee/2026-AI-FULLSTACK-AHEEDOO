

create table t1 (
    no int(11) not null auto_increment primary key,
    name varchar(100) null
);

desc t1;
desc t2;


insert into  t1( no, name ) values (1,'first');
insert into  t1( no, name ) values (2,'second');


insert into t2 (ino)  values (1);
insert into t2 (ino)  values (3);

create table t2 (
    ino int not null primary key,
    foreign key(ino) references t1(no)
);


