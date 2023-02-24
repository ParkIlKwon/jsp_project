use TESTDB; 
use TESTDB2;
select round(123.12345,-1);

select pow(2,3); # 2^3

select greatest(5,4,3,2,1); # max 값
select least(5,4,3,2,1); # min 값

#문자열 관련 함수

select concat('0000','-','1234');
select insert('abcde',2,3,'bbbb'); # 2번째부터 3개를 삭제후 삽입
select instr('안녕하세요','하'); #위치인덱스 가져옴  = 3 없으면 0 반환

select left('abcdef',3); -- 왼쪽에서부터 3개를 제외한 나머지를 삭제
select mid('abcdefg',2,3); # 2번째 인덱스에서 3개  bcd

select concat('[','     abc   ',']'); # 이걸 공백없애주고 싶으면
select concat('[',ltrim('     abc   '),']'); # ltrim  rtrim trim
select concat('[',trim('     abc   '),']');

select lcase('abCDEfg'); # 소문자로 변환 
select lower('abCDEfg'); # 소문자로 변환 

select ucase('abCDEfg'); # 대문자로 변환 
select upper('abCDEfg'); # 대문자로 변환 

select reverse('abCDEfg'); #반전

# 날짜 관련함수

select now(), sysdate() , current_timestamp();

select current_date(), curdate(); # 날짜

select  current_time(), current_time(); # 시간

#날자 포맷

select now() , date_format(now(),'%Y년 %m월 %d일, %H시 %i분 %s초'); #대문자와 소문자 차이 있음 . 

select dayofweek(now()); # 일요일이 1 . ※ mysql 에선 항상 1부터 시작함 .
select dayofweek(now());

# [문제] member테이블에서 회원의 가입 일자를 한글 날짜 형식으로 가져오기
select date_format(member_reg_date,'%Y년 %m월 %d일') from member;
