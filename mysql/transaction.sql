#트랜젝션이란 쪼갤 수 없는 업무 처리의 최소단위
#중간에 오류 나는걸 방지하기 위해 ! rollback
#DECIMAL(정수길이,소수점길이) -> int 보다 더 큰 숫자 표현해줌 .
#AUTO_INCREMENT 자동으로 1씩 증가해주는 기능 . 기본값이 1로 시작해서 증가.


use testdb2;

CREATE TABLE account(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    amount DECIMAL(19, 4) NOT NULL
);

CREATE TABLE transferHistory(
	id INT AUTO_INCREMENT PRIMARY KEY,
    from_id INT NOT NULL,
    to_id INT NOT NULL,  # NOT NULL ==> 널값이 올 수 없음
    amount DECIMAL(19, 4) NOT NULL,
    trans_date DATETIME
    # 거래내역을  기록해주는 역활 .
);
delete from account;

INSERT INTO account(name, amount) VALUES('박병준', 1000000), ('조영곤', 90000);
insert into account(id, name ,amount ) values(1,'박연미',10);
select * from account;

-- rollback : 시작점으로 돌아간다 : 시작점 

start transaction; -- 시작점 
-- 수정 
update account set amount = amount-50000 where id =1;
update account set amount = amount+50000 where id =2;

select * from transferHistory;
insert into transferHistory (from_id, to_id, amount, trans_date) values(1,2,50000, now());

-- if (실패) 
rollback;
-- 성공
commit;