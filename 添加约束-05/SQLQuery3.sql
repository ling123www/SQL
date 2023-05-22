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
  
  use StudentManageDB
  go
  --���Լ��
  --��������Լ��
  if exists(select*from sysobjects where name = 'pk_StudentID')
  alter table Students drop constraint pk_StudentID
  alter table Students add constraint pk_StudentID primary key(StudentID)--�����д������Լ��
  --����ΨһԼ��
  if exists(select*from sysobjects where name = 'uq_StudentID')
  alter table Students drop constraint uq_StudentID
  alter table Students add constraint uq_StudentID unique(StudentID)--�����д���ΨһԼ��



  --�������Լ��
  if exists(select*from sysobjects where name = 'ck_Age')
  alter table Students drop constraint ck_Age
  alter table Students add constraint  ck_Age check(Age between 18 and 25)--���������Ƿ�����18-25

  if exists(select*from sysobjects where name = 'ck_PhoneNumber')
  alter table Students drop constraint ck_PhoneNumber
  alter table Students add constraint  ck_PhoneNumber check(len(PhoneNumber)=11)--���������Ƿ����㳤��Ϊ11��
                                                                                --ע�����Ҫ�ȼ�Լ���ڼ�����
  update Students set PhoneNumber = 18798767826
  where StudentID=33202001910200
  select *from Students

  --Ĭ��Լ��,����Ϊnullʱ��ʾ������
  if exists(select*from sysobjects where name = 'df_StudentAddress')
  alter table Students drop constraint df_StudentAddress
  alter table Students add constraint df_StudentAddress default('��ַ����')for StudentAddress

  insert into Students(StudentAddress,CalssID,StudentIdcar,StudentName,--��������
  Age,Birthday,PhoneNumber,Gender)
  values(default,99,999999,'����',22,'8888-12-31','12345678910','��')