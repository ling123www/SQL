--创建学生信息数据表
use StudentManageDB--使用这个数据库
go
	if exists(select*from sysobjects where name = 'Students')--查询是否有Students名称的表
	drop table Students
	go
 create table Students
 (
	StudentID bigint identity(33202001910200,1),--学号从前往后自增,identity自增
	StudentName varchar(20) not null, --姓名
	Gender char(2) not null,--性别
	Birthday datetime not null,--生日 
	StudentIdcar numeric(18,0)not null,--numeric是精确数字类型，第一个表示数字，第二个表示精确到几位
	Age int not null,--年龄
	PhoneNumber varchar(50),
	StudentAddress varchar(500),
	CalssID int not null--班级	

 )
 go
  --创建班级表
  if exists(select*from sysobjects where name = 'StudentClass')
  drop table StudentClass
  go
  create table StudentClass
  (
	ClassID int primary key,--主键,班级编号
	ClassName varchar(20) not null
  )
  go
  --创建成绩表
  if exists(select*from sysobjects where name = 'ScoreList')
  drop table ScoreList
  go
  create table ScoreList
  (
	ID int identity(1,1) primary key,--序号
	StudentID int not null,--学号
	C# int null,--课程成绩
	SQLServer int null,--课程成绩
	UpdateTime datetime null--更新时间
  )
  go
  --创建管理员表，登录用户
  if exists(select*from sysobjects where name = 'Admins')
  drop table Admins
  go
  create table Admins
  (
	LoignID bigint identity(33202001910200,1)primary key,
	LoignKey varchar(20)not null,
	AdminsName varchar(20)not null
  )
  go
  
  use StudentManageDB
  go
  --添加约束
  --创建主键约束
  if exists(select*from sysobjects where name = 'pk_StudentID')
  alter table Students drop constraint pk_StudentID
  alter table Students add constraint pk_StudentID primary key(StudentID)--给这列创建检查约束
  --创建唯一约束
  if exists(select*from sysobjects where name = 'uq_StudentID')
  alter table Students drop constraint uq_StudentID
  alter table Students add constraint uq_StudentID unique(StudentID)--给这列创建唯一约束



  --创建检查约束
  if exists(select*from sysobjects where name = 'ck_Age')
  alter table Students drop constraint ck_Age
  alter table Students add constraint  ck_Age check(Age between 18 and 25)--检查这个列是否满足18-25

  if exists(select*from sysobjects where name = 'ck_PhoneNumber')
  alter table Students drop constraint ck_PhoneNumber
  alter table Students add constraint  ck_PhoneNumber check(len(PhoneNumber)=11)--检查这个列是否满足长度为11，
                                                                                --注意必须要先加约束在加数据
  update Students set PhoneNumber = 18798767826
  where StudentID=33202001910200
  select *from Students

  --默认约束,数据为null时显示的数据
  if exists(select*from sysobjects where name = 'df_StudentAddress')
  alter table Students drop constraint df_StudentAddress
  alter table Students add constraint df_StudentAddress default('地址不详')for StudentAddress

  insert into Students(StudentAddress,CalssID,StudentIdcar,StudentName,--插入数据
  Age,Birthday,PhoneNumber,Gender)
  values(default,99,999999,'王五',22,'8888-12-31','12345678910','无')