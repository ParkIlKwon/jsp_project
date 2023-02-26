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

# [문제 10] mypage 테이블에서 토요일 웹툰을 산 회원 목록과 웹툰이름을 출력하시오.
select m.mp_id , t.t_title from mypage m , toon t
where dayofweek(t.t_regDate) = 7 and t.t_title = m.mp_favorite; 

# [문제 11] mypage 테이블에서 회원당 평균 소비량을 출력하시오.
select mp_id, avg(mp_buyToon) from mypage group by mp_id;

# [문제 12] member 테이블에서 회원 중 20대인 회원의 수를 출력하시오.
select count(m_id)as 20대  from member where FLOOR(m_age/10) = 2;

# [문제 13] member 테이블에서 회원 중에 남자회원의 총 수와 여자회원의 총 수를 출력하시오.
select m_gender,count(m_gender) from member group by (m_gender);

# [문제 14] member 테이블에서 회원 나이순으로 내림차순 정렬하여 출력하시오.
select * from member order by m_age desc;

# [문제 15] 오래된 회원순으로 정렬(가입일자 순으로 오름차순 정렬)
select * from member order by m_regDate ;

# [문제 16] qna 테이블에서 작성자가 'qwer'인 게시글 정보를 출력하시오.
select * from qna where q_id ='qwer';

# [문제 17] qna 게시글 제목에 '오류'가 들어가는 게시물의 총 개수를 출력하시오.
select * from qna where q_title like '%오류%';
# [문제 18] qna 테이블에서 회원별 게시글 개수 출력하시오.
select q_id, count(*) as '게시글개수' from qna group by q_id;













