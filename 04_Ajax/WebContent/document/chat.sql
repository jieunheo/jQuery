create database chatdb;
use chatdb;

create table chat
(
	cno INT primary key auto_increment comment 'ä�ù�ȣ',
	cdate DATETIME default now() comment '�ۼ�����',
	cname VARCHAR(100) comment '�ۼ��ڸ�',
	cnote TEXT comment 'ä�ó���'
);

insert into chat (cname, cnote)
value ('ȫ�浿','�ȳ��ϼ���? 1�Դϴ�.'),
('ȫ�浿','�ȳ��ϼ���? 2�Դϴ�.'),
('ȫ�浿','�ȳ��ϼ���? 3�Դϴ�.');