use TESTDB2;

# 정보를 가지고 오고 싶을때 join
desc member;
select cart.buyer , member_name from cart , member where cart.buyer = member.member_id;

-- 테이블 이름 별칭을 지어줄 수 있다  from 테이블이름 별칭 
select c.buyer , member_name from cart c , member m where c.buyer = m.member_id;

# 문제1 ) cart테이블에서 buyer의 이름과 cart의 가격 가져오기
select c.buyer , member_name,c.buy_price from cart c, member m  where c.buyer = m.member_id;
# 문제2 ) cart테이블에서 회원이 구매한 도서의 할인되기 전의 가격과 할인율 가져오기
select c.book_title,b.book_price, b.book_discount_rate, c.buy_price
from cart c, book b where c.book_title = b.book_title;
# 문제3 ) cart테이블에서 회원이 구매한 도서의 할인되기 전의 가격이 2만원 이상인 도서정보와 할인율 가져오기
select c.book_title,b.book_price, b.book_discount_rate, c.buy_price
from cart c, book b where c.book_title = b.book_title and b.book_price >= 20000;


