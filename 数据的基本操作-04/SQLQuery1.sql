use StudentManageDB
go
insert into Students(StudentAddress,CalssID,StudentIdcar,StudentName,--��������
Age,Birthday,PhoneNumber,Gender)
values('�Ĵ�ʡ��Ԫ��',3,510802200109172839,'���ں�',21,'2001-09-17',16288980076,'��')

	update Students set StudentAddress = '�Ĵ�ʡ�ɶ���',PhoneNumber=1782238912374,CalssID=1--�޸�����
	where StudentID=33202001910200--�����where��������Ȼ��ȫ���޸�

	delete from Students where CalssID = 3--ɾ�����ݣ�ɾ��ʱ���ܱ�������ã�ɾ�����ʶ����������

	select*from Students--��ѯ�����
	truncate table Students--ɾ�����������в����������ϵ