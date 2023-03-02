drop table member;

create table member(
	no int primary key auto_increment, 
    id varchar(20) not null, 
    pw varchar(20) not null,
    name varchar(20) not null,
    email varchar(30) not null,
    gender varchar(2) not null,
    hobby varchar(30) not null,    
    unique key(id)
);

select * from member;

insert into member(id,pw,name,email,gender,hobby) values('test1','1111','테스트1','test1@test.com','남성','놀기');
insert into member(id,pw,name,email,gender,hobby) values('test2','1234','테스트2','test2@test.com','남성','컴퓨터');
insert into member(id,pw,name,email,gender,hobby) values('test3','3333','테스트3','test3@test.com','여성','요리');
insert into member(id,pw,name,email,gender,hobby) values('test4','4444','테스트4','test4@test.com','남성','축구');



