use StudentManageDB
go
select*from Students
select*from Admins
select*from StudentClass	
select*from ScoreList--查询

--查询的部分
select StudentID,StudentName ,Gender--显示的列
from Students--表名
where Gender = '男'and Age>21--约束条件（可选部分），多个条件用and连接	
order by StudentID DESC--约束条件（可选部分）

--将英文显示中文
select StudentID as 学号,
StudentName as 学生姓名,
Gender as 性别,
Birthday as 出生日期,
StudentIdcar as 学生卡,
Age as 年龄,
PhoneNumber as 电话号码,
StudentAddress as 地址 ,
CalssID as 班级

from Students
select *from ScoreList

select 总成绩 = C#+SQLServer from ScoreList--加号的用法，注意相加的必须数据类型相同

--查询空列
select*from ScoreList
insert into ScoreList(StudentID,C#)values(332020,88)--第二个课程不写分数
select *from ScoreList where SQLServer is null --查找SQLServer为空值的地方

--查询指定数目列
select top 5 StudentName,StudentID,Gender,Birthday,StudentIdcar,Age from Students

--升序降序排列
select StudentID,C#,DB=SQLServer
from ScoreList 
where C#>80
order by C# ASC--升序

select StudentID,C#,DB=SQLServer
from ScoreList 
where C#>80
order by C# DESC--降序

select StudentID,C#,DB=SQLServer
from ScoreList 
order by DB DESC,C# DESC--无条件降序当DB相等时，按C#高则排高位

--模糊查询like
select StudentName,Gender,Birthday,StudentAddress
from Students
where StudentAddress like '%广元%'--模糊查询地址含广元的列

--范围查询between
select *from Students
where Birthday between'2001-2-1'and'2002-3-1'

--求最大值，最小值，平均值，总和
select SUM(C#)as C#总成绩--求和函数
from ScoreList

select 总人数 = COUNT(*)from Students--总人数是常量

select MAX(C#) as C#最高成绩,MIN(C#)as C#最低成绩
from ScoreList

select C#平均分 = AVG(C#),SQLServer平均分=AVG(SQLServer)
from ScoreList
