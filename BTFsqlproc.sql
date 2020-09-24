use bgDB
go
--game���ѯ�����еĴ洢����
create proc Game_SelectWhere
as
select Studio.sName,GType.name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id

exec Game_SelectWhere
go

--��ѯ�����¼
create proc Gorder_Select
as
select Game.gName,Userinfo.userName,Gorder.* from Gorder,Game,Userinfo where Game.id=Gorder.oGid and Userinfo.id=Gorder.oUid
go

exec Gorder_Select
go

--�������
create proc GType_Insert
(
	@name nvarchar(20)
)
as
insert into GType values(@name)
go

--�����ѯȫ��
create proc GType_Select
as
select * from GType
go
exec GType_Select
go


--�����¼ɾ��
create proc Gorder_Delete
(
	@id int
)
as 
delete from Gorder where id = @id

exec Gorder_Delete 2
go

--�����¼��ѯ
create proc Groder_Select
as
select Game.gName,Userinfo.userName,Gorder.* from Gorder,Game,Userinfo where Game.id=Gorder.oGid and Userinfo.id=Gorder.oUid
go
exec Groder_Select
go

--game��Ϸ��������ѯ
create proc SelectGame
(
	@GType_id int ,
	@Studio_id int,
	@Game_gState int,
	@Game_gName nvarchar(20)
)
as

	declare @str nvarchar(1000)
	set @str=' select s3.sName,s2.name,s1.* from Game as s1,GType as s2,Studio as s3 where s1.gTid=s2.id and s1.gSId=s3.id  '
	if(@GType_id>0)begin
		set @str=@str+' and s2.id =  '+cast(@GType_id as nvarchar(10))
	end
	if(@Studio_id>0)begin
		set @str=@str+' and s3.id =  '+cast(@Studio_id as nvarchar(10))
	end
	if(@Game_gState >-1)begin
		set @str=@str+' and s1.gState = '+cast(@Game_gState as nvarchar(10))
	end
	if(@Game_gName <>'' and @Game_gName is not null )begin
		set @str=@str+' and s1.gName like ''%'+@Game_gName+'%'''
	end
	print @str
	exec (@str)
go

use bgDB
go
--�洢���̷�ҳ
select * from(
select ROW_NUMBER() over(order by id) as RomNum , * from [Game]
) as t where t.RomNum between 1 and 5


use bgDB
go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC Game_Select
(
	@GType_id int ,
	@Studio_id int,
	@Game_gState int,
	@Game_gName nvarchar(20),

	@PageIndex INT,
	@PageSize INT,
	@TotalCount INT OUTPUT --����Ϊ�������
)
AS
DECLARE @StrSql NVARCHAR(1024);--����ƴ��SQL������
DECLARE @strWhere NVARCHAR(1024)--����where�����ı���
DECLARE @PageCount INT --������ҳ��
SET @StrWhere=''


 if(@GType_id>0)begin
		set @strWhere=@strWhere+' and s2.id =  '+cast(@GType_id as nvarchar(10))
	end
	if(@Studio_id>0)begin
		set @strWhere=@strWhere+' and s3.id =  '+cast(@Studio_id as nvarchar(10))
	end
	if(@Game_gState >-1)begin
		set @strWhere=@strWhere+' and s1.gState = '+cast(@Game_gState as nvarchar(10))
	end
	if(@Game_gName <>'' and @Game_gName is not null )begin
		set @strWhere=@strWhere+' and s1.gName like ''%'+@Game_gName+'%'''
	end

SET @StrSql=' select count(*) from Game'+@strWhere

EXEC sp_executesql @StrSql,N'@RowCount INT OUTPUT',@TotalCount OUTPUT  --��ȡ�����ܼ�¼��

IF (@PageIndex<1)
BEGIN
	SET @PageIndex=1;--�����ǰҳ����С��1������ʾ��ҳ����
END 


SET @PageCount=CEILING(CONVERT(FLOAT,@TotalCount) /@PageSize)--��ȡ��ҳ��

IF(@PageIndex>@PageCount)
BEGIN
	SET @PageIndex=@PageCount
END

SET @StrSql='select * from(
select ROW_NUMBER() over(order by id) as RomNum , * from [Game] where 1=1'+@strWhere+'
) as t where t.RomNum between '+CONVERT(NVARCHAR(32),((@PageIndex-1)*@PageSize+1))+' and '+CONVERT(NVARCHAR(32),(@PageIndex*@PageSize)) 

EXEC sp_executesql @StrSql 
go

--declare @TotalCount int
--exec Game_Select 0,0,-1,'',3,5,@TotalCount output
--print @TotalCount

--'select * from( select ROW_NUMBER() over(order by id) as RomNum , * from [Game] where 1=1'+@strWhere+' ) as t where t.RomNum between '+CONVERT(NVARCHAR(32),((@PageIndex-1)*@PageSize+1))+'  and '+CONVERT(NVARCHAR(32),(@PageIndex*@PageSize)) 


--�޸�	��Ϸ��
create proc Game_Updane
(
	@id int,
	@gTid int,
	@gSId int,
	@gName varchar(128),
	@gPrice float ,
	@gState int
)
as 
update Game set gName=@gName,gPrice=@gPrice,gSId=@gSId,gState=@gState,gTid=@gTid where id=@id
go


--�޸�	����Ա��
create proc administrators_Updane
(
	@id int,
	@aName varchar(64),
	@aPwd varchar(64)
)
as 
update administrators set aName=@aName,aPwd=@aPwd where id=@id
go


--�޸�	�û���
create proc Userinfo_Updane
(
	@id int ,--�û�id
	@userName varchar(64),--�˺���
	@userPwd varchar(64),--����
	@userSex bit,--�û��Ա�
	@userSite varchar(50),--�û�����
	@userTel varchar(11),--�û��ֻ���
	@uBalance float--���
)
as 
update Userinfo set userName=@userName,userPwd=@userPwd,userSex=@userSex,userSite=@userSite,userTel=@userTel,uBalance=@uBalance where id=@id
go

--�޸�	���̱�
create proc Studio_Update
(
	@id int,--��Ϸ����id
	@sName varchar(64),--��������
	@sTel varchar(64)--��ϵ��ʽ
)
as 
update Studio set sName=@sName,sTel=@sTel where id=@id
go