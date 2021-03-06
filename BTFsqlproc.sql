use bgDB
go
--game表查询所有列的存储过程
create proc Game_SelectWhere
as
select Studio.sName,GType.name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id

exec Game_SelectWhere
go

--查询购买记录
create proc Gorder_Select
as
select Game.gName,Userinfo.userName,Gorder.* from Gorder,Game,Userinfo where Game.id=Gorder.oGid and Userinfo.id=Gorder.oUid
go

exec Gorder_Select
go

--类别表添加
create proc GType_Insert
(
	@name nvarchar(20)
)
as
insert into GType values(@name)
go

--类别表查询全部
create proc GType_Select
as
select * from GType
go
exec GType_Select
go


--购买记录删除
create proc Gorder_Delete
(
	@id int
)
as 
delete from Gorder where id = @id

exec Gorder_Delete 2
go

--购买记录查询
create proc Groder_Select
as
select Game.gName,Userinfo.userName,Gorder.* from Gorder,Game,Userinfo where Game.id=Gorder.oGid and Userinfo.id=Gorder.oUid
go
exec Groder_Select
go

--game游戏表条件查询
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
--存储过程分页
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
	@TotalCount INT OUTPUT --定义为输出参数
)
AS
DECLARE @StrSql NVARCHAR(1024);--定义拼接SQL语句变量
DECLARE @strWhere NVARCHAR(1024)--定义where条件的变量
DECLARE @PageCount INT --定义总页数
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

EXEC sp_executesql @StrSql,N'@RowCount INT OUTPUT',@TotalCount OUTPUT  --获取数据总记录数

IF (@PageIndex<1)
BEGIN
	SET @PageIndex=1;--如果当前页索引小于1，则显示首页数据
END 


SET @PageCount=CEILING(CONVERT(FLOAT,@TotalCount) /@PageSize)--获取总页数

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


--修改	游戏表
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


--修改	管理员表
create proc administrators_Updane
(
	@id int,
	@aName varchar(64),
	@aPwd varchar(64)
)
as 
update administrators set aName=@aName,aPwd=@aPwd where id=@id
go


--修改	用户表
create proc Userinfo_Updane
(
	@id int ,--用户id
	@userName varchar(64),--账号名
	@userPwd varchar(64),--密码
	@userSex bit,--用户性别
	@userSite varchar(50),--用户地区
	@userTel varchar(11),--用户手机号
	@uBalance float--余额
)
as 
update Userinfo set userName=@userName,userPwd=@userPwd,userSex=@userSex,userSite=@userSite,userTel=@userTel,uBalance=@uBalance where id=@id
go

--修改	厂商表
create proc Studio_Update
(
	@id int,--游戏厂商id
	@sName varchar(64),--厂家名称
	@sTel varchar(64)--联系方式
)
as 
update Studio set sName=@sName,sTel=@sTel where id=@id
go