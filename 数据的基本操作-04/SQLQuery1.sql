use StudentManageDB
go
insert into Students(StudentAddress,CalssID,StudentIdcar,StudentName,--插入数据
Age,Birthday,PhoneNumber,Gender)
values('四川省广元市',3,510802200109172839,'李亿豪',21,'2001-09-17',16288980076,'男')

	update Students set StudentAddress = '四川省成都市',PhoneNumber=1782238912374,CalssID=1--修改数据
	where StudentID=33202001910200--必须加where条件，不然会全部修改

	delete from Students where CalssID = 3--删除数据，删除时不能被外键引用，删除后标识符继续增长

	select*from Students--查询这个表
	truncate table Students--删除整个表，其中不能有外键联系