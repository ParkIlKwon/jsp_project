create table board(

	no int primary key auto_increment,
	writer varchar(20) not null,
	subject varchar(50) not null,
	contents varchar(255) not null,
	regDate varchar(10) not null

);

insert into board(writer,subject,contents,regDate)
values('작성자1','제목1','내용1','2023-02-20');

insert into board(writer,subject,contents,regDate)
values('작성자2','제목2','내용2','2023-02-20');

insert into board(writer,subject,contents,regDate)
values('작성자3','제목3','내용3','2023-02-20');

insert into board(writer,subject,contents,regDate)
values('작성자4','제목4','내용4','2023-02-20');
delete from board where no = 6;

insert into board(writer,subject,contents,regDate) values('sdf','sfd','sdf','2020-12-12');
delete from board;
drop table board;

select max(no) from board;
