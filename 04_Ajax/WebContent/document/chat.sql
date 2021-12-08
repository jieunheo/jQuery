create database chatdb;
use chatdb;

create table chat
(
	cno INT primary key auto_increment comment '채팅번호',
	cdate DATETIME default now() comment '작성일자',
	cname VARCHAR(100) comment '작성자명',
	cnote TEXT comment '채팅내용'
);

insert into chat (cname, cnote)
value ('홍길동','안녕하세요? 1입니다.'),
('홍길동','안녕하세요? 2입니다.'),
('홍길동','안녕하세요? 3입니다.');