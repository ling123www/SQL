use StudentManageDB
go
select*from Students
select*from Admins
select*from StudentClass	
select*from ScoreList--��ѯ

--��ѯ�Ĳ���
select StudentID,StudentName ,Gender--��ʾ����
from Students--����
where Gender = '��'and Age>21--Լ����������ѡ���֣������������and����	
order by StudentID DESC--Լ����������ѡ���֣�

--��Ӣ����ʾ����
select StudentID as ѧ��,
StudentName as ѧ������,
Gender as �Ա�,
Birthday as ��������,
StudentIdcar as ѧ����,
Age as ����,
PhoneNumber as �绰����,
StudentAddress as ��ַ ,
CalssID as �༶

from Students
select *from ScoreList

select �ܳɼ� = C#+SQLServer from ScoreList--�Ӻŵ��÷���ע����ӵı�������������ͬ

--��ѯ����
select*from ScoreList
insert into ScoreList(StudentID,C#)values(332020,88)--�ڶ����γ̲�д����
select *from ScoreList where SQLServer is null --����SQLServerΪ��ֵ�ĵط�

--��ѯָ����Ŀ��
select top 5 StudentName,StudentID,Gender,Birthday,StudentIdcar,Age from Students

--����������
select StudentID,C#,DB=SQLServer
from ScoreList 
where C#>80
order by C# ASC--����

select StudentID,C#,DB=SQLServer
from ScoreList 
where C#>80
order by C# DESC--����

select StudentID,C#,DB=SQLServer
from ScoreList 
order by DB DESC,C# DESC--����������DB���ʱ����C#�����Ÿ�λ

--ģ����ѯlike
select StudentName,Gender,Birthday,StudentAddress
from Students
where StudentAddress like '%��Ԫ%'--ģ����ѯ��ַ����Ԫ����

--��Χ��ѯbetween
select *from Students
where Birthday between'2001-2-1'and'2002-3-1'

--�����ֵ����Сֵ��ƽ��ֵ���ܺ�
select SUM(C#)as C#�ܳɼ�--��ͺ���
from ScoreList

select ������ = COUNT(*)from Students--�������ǳ���

select MAX(C#) as C#��߳ɼ�,MIN(C#)as C#��ͳɼ�
from ScoreList

select C#ƽ���� = AVG(C#),SQLServerƽ����=AVG(SQLServer)
from ScoreList
