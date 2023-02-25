use webtoon;


# [문제 01] notice 테이블에서 게시글 종류가 서비스 공지인 것만 출력하시오.
#           단, 등록일이 최신인 순으로 정렬하여 출력하시오.
select * from notice;
select * from notice where nt_kind like '%서비스%' order by nt_regDate desc;

# [문제 02] toon 테이블의 전체 정보를 출력하시오.
select * from toon;

# [문제 03] toon 테이블에서 스토리 장르가 포함된 것만 출력하시오.
select * from toon where t_kind like '%스토리%';

# [문제 04] toon 테이블에서 15세 연령가 웹툰만 출력하시오.
select * from toon where t_age =15;

# [문제 05] toon 테이블에서 웹툰 조회수 순으로 내림차순 정렬하여 출력하시오.
select * from toon order by t_readCount desc;

# [문제 06] toon 테이블에서 웹툰 등록일이 토요일인 웹툰을 검색해 출력하시오.
# 1(일요일)
select * from toon where dayofweek(t_regDate) = 7; 

# [문제 07] mypage 테이블에서 별이삼샵 웹툰을 구매한 회원목록을 출력하시오.
select mp_id as 회원, mp_favorite as 웹툰 from mypage where mp_favorite = '별이삼샵';

# [문제 08] mypage 테이블에서 'asd' 회원이 구입한 총 가격을 출력하시오.
select sum(mp_buyToon) from mypage where mp_id = 'asd';

# [문제 09] mypage 테이블에서 웹툰 총 구매 가격이 500원 이상 인 
#           회원의 아이디와 가격을 출력하시오.
select mp_id,sum(mp_buyToon) from mypage group by mp_id having sum(mp_buyToon) >= 500; 






