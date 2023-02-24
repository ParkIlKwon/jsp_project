use testdb2;

# book 테이블에서 전체 평균 가격보다 더 높은 도서정보 가져오기
# 서브쿼리는 명령문 안에 또 다른 명령문쓸때 .
# 즉 select 를 여러번 사용해야 할 경우 .
# ()안에 먼저 실행되는 쿼리문 넣기 .

select avg(book_price) from book; # 조건 

select * from book 
where (select avg(book_price) from book) <= book_price;

# book 테이블에서 가장 가격이 높은 도서 정보 가져오기 

select * from book where book_price = (select max(book_price) from book);

