--����ѧ����Ϣ���ݱ�
use StudentManageDB--ʹ��������ݿ�
go
	if exists(select*from sysobjects where name = 'Students')--��ѯ�Ƿ���Students���Ƶı�
	drop table Students
	go
 create table Students
 (
	StudentID bigint identity(33202001910200,1),--ѧ�Ŵ�ǰ��������,identity����
	StudentName varchar(20) not null, --����
	Gender char(2) not null,--�Ա�
	Birthday datetime not null,--���� 
	StudentIdcar numeric(18,0)not null,--numeric�Ǿ�ȷ�������ͣ���һ����ʾ���֣��ڶ�����ʾ��ȷ����λ
	Age int not null,--����
	PhoneNumber varchar(50),
	StudentAddress varchar(500),
	CalssID int not null--�༶	

 )
 go
  --�����༶��
  if exists(select*from sysobjects where name = 'StudentClass')
  drop table StudentClass
  go
  create table StudentClass
  (
	ClassID int primary key,--����,�༶���
	ClassName varchar(20) not null
  )
  go
  --�����ɼ���
  if exists(select*from sysobjects where name = 'ScoreList')
  drop table ScoreList
  go
  create table ScoreList
  (
	ID int identity(1,1) primary key,--���
	StudentID int not null,--ѧ��
	C# int null,--�γ̳ɼ�
	SQLServer int null,--�γ̳ɼ�
	UpdateTime datetime null--����ʱ��
  )
  go
  --��������Ա����¼�û�
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