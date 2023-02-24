use testdb2;


-- 그룹함수 10개 테이블 레코드(row) -> 1개로 병합 결과 도출 
# COUNT() 갯수 
# SUM() 총합 
# AVG() 평균
# MAX() 가장 큰값 
# MIN() 가장 작은값 

# member 테이블에서 전체 회원수 를 가져오기 
select member_id , member_gender from member;
select count(*) from member;
# 남자 회원수만 출력
select count(*) from member where member_gender='m';

# [문제 1 ] member테이블에서 전체 회원 수 가져오기
select count(*) from member;
# [문제 2] member테이블에서 남자 회원 수 가져오기
select count(*) from member where  member_gender = 'm';
# [문제 3] book테이블에서 전체 도서 가격의 총합 가져오기
select sum(book_price) from book; 
# [문제 4] book테이블에서 전체 도서 가격의 평균 가져오기 - [조건] 소수점 이하 2자리까지 출력
select round(avg(book_price),2) from book;
# [문제 6] book테이블에서 도서 가격을 10%로 인상했을 때의 총합 가져오기
select sum(book_price),sum(book_price*1.1) from book;
# [문제 7] book테이블에서 도서 가격이 가장 높은 도서가격 가져오기
select MAX(book_price) from book;

# 종류별로 분할 해줍니다 .
select book_kind , count(*) from book group by book_kind;

# 카트 테이블에서 회원별로 구매한 총 수량 
select buyer , count(*) from cart group by buyer
order by count(*) desc;
select * from cart ;

# ! 항상 정렬은 맨 마지막에 !

# having : .group by 로 만든 테이블의 조건절이다 ..

#cart 테이블에서 회원이 구입한 도서의 수량이 2개 이상인 회원의 id 가져오기
select buyer , sum(buy_count) from cart
group by buyer having sum(buy_count) >=2;

# book 테이블에서 2015년에서 2019년 사이에 출간한 도서중에 
# 재고 수량이 3개 이하인 도서를 종류별 개수 가져오기 .

select * from book;

select book_kind,book_count from book 
group by book_kind having book_publishing_date >= '2015-01-01';

select book_kind,book_title,book_count,book_publishing_date
from book where book_publishing_date >= '2015-01-01'
and book_publishing_date < '2020-01-01' ;

select book_kind,count(book_kind)
from book where book_count <= 3 and book_publishing_date >= '2015-01-01'
and book_publishing_date < '2020-01-01' group by book_kind;







