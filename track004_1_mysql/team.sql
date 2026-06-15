create table region_sido (
    sido_no int auto_increment primary key,
    sido_name varchar(50) not null
);

create table region_sigungu (
    sigungu_no int auto_increment primary key,
    sido_no int not null,
    sigungu_name varchar(50) not null,
    foreign key (sido_no) references region_sido(sido_no)
);