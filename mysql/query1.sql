-- 주석 
# 주석 

create database TESTDB;

use TESTDB; -- db 연결 .
-- 자료형 타입
-- 자바 / mysql
-- int / int 
-- String / varchar
-- util.date / sql.date

-- int num = 10 ; => 안됨 num int 
create table sample(

	num int(11),
    name varchar(20),
    birthday date,
    address varchar(40)
);

select * from sample;
 
-- 전체 컬럼 데이터 삽입 : 주의 컬럼 명의 정의된 순서대로 넣기
-- "" -> 사용불가 
insert into sample values(1,'아무개','1999-10-25' , '서울특별시 역삼동');

-- 컬럼에 부분적으로 데이터를 삽입 
insert into sample (num,name, address) values(2,'홍길동','서울특별시 강남구 ');

insert into sample values(3,'테스트1','1991-01-01' , '서울특별시 강남');
insert into sample values(4,'테스트2','1992-01-01' , '서울특별시 역삼');
insert into sample values(5,'테스트3','1993-01-01' , '서울특별시 신사');
insert into sample values(6,'테스트4','1994-01-01' , '경기도 아무개');
insert into sample values(7,'테스트5','1995-01-01' , '강원도 아무개');
insert into sample values(8,'테스트6','1996-01-01' , '경기도 수원');
insert into sample values(9,'테스트7','1997-01-01' , '경기도 용인');

delete from sample; -- 전체삭제 !
delete from sample where name = "테스트3"; -- 조건부 삭제

delete from sample where birthday is null ;
-- 부분검색 메타문자 like 키워드 % _ 특정 조건이 있는지 확인 가능 .
-- % -> 여러 문자열 , %_ 한글자 .

-- 1번째 : 전방 일치
select * from sample where address like '서울특별시%'; 

-- 2번째 : 마지막일치
select * from sample where address like '%아무개';

-- 3번째 : 중간일치 
select * from sample where name like '%4%';

-- 테이블 구조 확인
desc sample;

-- char 고정길이 문자열 !

select * from sample where birthday > '1992-01-01';

select * from sample where address like '%아무개' and num = 6;

-- <> -> 다르다 연산 (!=)
select * from sample where birthday > '1992-01-01' and name <> '테스트5';

