use bgDB
go
--game表查询所有列的存储过程
create proc Game_SelectWhere
as
select Studio.sName,GType.name,Game.* from Game,GType,Studio where Game.gTid=GType.id and Game.gSId=Studio.id

exec Game_SelectWhere

--查询购买记录
create proc Gorder_Select
as
select Game.gName,Userinfo.userName,Gorder.* from Gorder,Game,Userinfo where Game.id=Gorder.oGid and Userinfo.id=Gorder.oUid

exec Gorder_Select

--类别表添加
create proc GType_Insert
(
	@name nvarchar(20)
)
as
insert into GType values(@name)

--类别表查询全部
create proc GType_Select
as
select * from GType

exec GType_Select



--购买记录删除
create proc Gorder_Delete
(
	@id int
)
as 
delete from Gorder where id = @id

exec Gorder_Delete 2

--购买记录查询
create proc Groder_Select
as
select Game.gName,Userinfo.userName,Gorder.* from Gorder,Game,Userinfo where Game.id=Gorder.oGid and Userinfo.id=Gorder.oUid

exec Groder_Select

--game游戏表条件查询
create proc Game_Select
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



