use master
go

if exists (select * from sys.databases where name ='bgDB')
	drop database bgDB
go

create database bgDB
go

use bgDB
go

--��Ϸ�����

create table GType
(
	id int primary key identity(1,1),--��Ϸ����ID
	name varchar(128) not null--�������� 
)
go

--��Ϸ���̱�
create table Studio
(
	id int primary key identity(1,1),--��Ϸ����id
	sName varchar(64) not null,--��������
	sTel varchar(64) not null--��ϵ��ʽ
)
go
--��Ϸ���
create table Game
(
	id int primary key identity(1,1),--��Ϸid
	gTid int references GType(id) not null,--��Ϸ����
	gSId int references Studio(id) not null,--��Ϸ����
	gName varchar(128) not null,--��Ϸ����
	gPrice float not null,--��Ϸ�۸�
	gState bit default(0) not null,--��Ϸ�ϼ�״̬ 0�������ϼ� 1�������¼�
)
go
--�û���Ϣ��
create table Userinfo
(
	id int primary key identity(1,1),--�û�id
	userName varchar(64) not null,--�˺���
	userPwd varchar(64) not null,--����
	uBalance float default(0) not null--���
)
go
--������ϸ��
create table Gorder
(
	id int primary key identity(1,1),--����id
	oUid int references Userinfo(id) not null,--�����û�
	oGid int references Game(id) not null,--������Ϸ
	oTime datetime not null--��������
)
go
--�û���Ϸ���
create table library
(
	id int primary key identity(1,1),--��Ϸ��id
	lCollection bit default(0) not null,--�Ƿ����ղؼУ�0��ʾ�����ղؼУ�1��ʾ���ղؼ�
	lhide bit default(0) not null,--�Ƿ񽫸���Ϸ���أ� 0��ʾ��ʾ��1��ʾ����
)
go
--��Ϸ���۱�
create table comment
(
	id int primary key identity(1,1),--����id
	cgid int references Game(id) not null,--������Ϸ
	cUid int references Userinfo(id) not null,--�����û�
	cment varchar(512) not null,--����
	cTime datetime not null--����ʱ��
)
go
--����Ա��
create table administrators
(
	id int primary key identity(1,1),--����Աid
	aName varchar(64) not null,--�˻���
	aPwd varchar(64) not null--����
)
go

--�м��
create table Userlibrary
(
	gid int references library(id) not null,--��Ϸ
	[Uid] int references Userinfo(id) not null,--�û�
	primary key(gid,[Uid])
)
go

insert into GType values ('������')
insert into GType values ('������')
insert into GType values ('ð����')
insert into GType values ('������')
insert into GType values ('�ֲ���')
insert into GType values ('�����')
insert into GType values ('������')
insert into GType values ('������')
insert into GType values ('������')
insert into GType values ('������')
go

insert into Studio values ('CAPCOM','+01 1**********')
insert into Studio values ('CDPROJEKT','+01 1**********')
insert into Studio values ('UBISOFT','+01 1**********')
insert into Studio values ('ROCKSTAR','+01 1**********')
insert into Studio values ('Naughty Dog','+01 1**********')
insert into Studio values ('gameloft','+01 1**********')
insert into Studio values ('microsoft','+01 1**********')
insert into Studio values ('activision','+01 1**********')
insert into Studio values ('blizzard','+01 1**********')
insert into Studio values ('Riot Games','+01 1**********')
go

insert into Game values (5,1,'����Σ��',198,default)
insert into Game values (5,1,'����Σ��2',198,default)
insert into Game values (3,2,'�������2077',198,default)
insert into Game values (3,2,'��ʦ3',198,default)
insert into Game values (6,3,'�ʺ�����-Χ��',198,default)
insert into Game values (3,3,'�̿������µ���',198,default)
insert into Game values (4,4,'�����Գ���ʥ������˹',198,default)
insert into Game values (4,4,'�����Գ�5',198,default)
insert into Game values (3,5,'���غ���4',198,default)
insert into Game values (3,5,'���������',198,default)
insert into Game values (4,6,'��͵�̰֣�С���˿���',198,default)
insert into Game values (8,6,'��Ұ쭳�8:��������',198,default)
insert into Game values (2,7,'�۹�ʱ��3�����������',198,default)
insert into Game values (6,7,'ս������4',198,default)
insert into Game values (6,8,'ʹ���ٻ�:��ɫ�ж�4',198,default)
insert into Game values (1,8,'Űɱԭ��',198,default)
insert into Game values (2,9,'�Ǽ�����',198,default)
insert into Game values (7,9,'ħ������',198,default)
insert into Game values (2,10,'Ӣ������',198,default)
insert into Game values (2,10,'���Ĵ�ش���',198,1)
go

insert into Userinfo values ('user1','123',default)
insert into Userinfo values ('user2','123',default)
insert into Userinfo values ('user3','123',default)
insert into Userinfo values ('user4','123',default)
insert into Userinfo values ('user5','123',default)
go
--����
insert into Gorder values (1,1,GETDATE())
insert into Gorder values (1,2,GETDATE())
insert into Gorder values (2,1,GETDATE())
insert into Gorder values (2,2,GETDATE())
--�û���
insert into library values (default,default)
go

insert into comment values (1,1,'�治�',GETDATE())
go

insert into administrators values ('admin','123')
insert into administrators values ('admin2','123')
go

insert into  Userlibrary values (1,1)
go

select * from GType
select * from Studio
select * from Game
select * from Userinfo
select * from Gorder
select * from library
select * from administrators
select * from comment
select * from Userlibrary
go

select Studio.sName,GType.name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id 
select Studio.sName,GType.name,Game.* from Game,GType,Studio	
select Studio.sName,name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id and Game.gName like'%����%'
select Studio.sName,GType.name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id and GType.id = 3 and Studio.id = 5 and Game.gState = 0 and Game.gName like '%���%' 

--ɾ������
--delete from comment where id =1 
--delete from Gorder where id =1 
--delete from library where id =1 
--delete from Userinfo where id =1 (�޷�ֱ��ɾ���û������ݡ���Ҫɾ��ǰ��������id��ͬ�ļ�¼)

--delete from Game where id=1	(�޷�ֱ��ɾ����Ϸ�����ݡ���Ҫɾ��Gorder��id��ͬ�ļ�¼)
--delete from Studio where id=1	(�޷�ֱ��ɾ�����̱����ݡ���Ҫɾ��Game��id��ͬ�ļ�¼)
--delete from GType where id=1	(�޷�ֱ��ɾ�����̱����ݡ���Ҫɾ��Game��id��ͬ�ļ�¼)
--�ܽ᣺��Ҫ��IDE�и�ҳ�����ɾ���������Ȳ�ѯ����ɾ���� 
--ɾ���û���������Ҫ��ѯcomment,Gorder,library���������Ƿ���ɾ����ǰ��id��ͬ�ļ�¼�����������ͬid���������ֹɾ��
--ɾ����Ϸ��������Ҫ��ѯGorder�����Ƿ���ɾ����ǰ��id��ͬ�ļ�¼�����������ͬid���������ֹɾ��
--ɾ��GType��Studio����Ҫ��ѯGame�����Ƿ���ɾ����ǰ��id��ͬ�ļ�¼�����������ͬid���������ֹɾ��
--�������ֹ������ʾ���Լ������


--select Studio.sName,GType.name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id
--select Game.gName,Userinfo.userName,Gorder.* from Gorder,Game,Userinfo where Game.id=Gorder.oGid and Userinfo.id=Gorder.oUid