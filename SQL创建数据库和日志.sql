use master
go
--�������ݿ�
 create database StudentManageDB
 on primary
 (
 name = 'StudentManageDB_data',--���ݿ��ļ����߼���
 Filename='D:\SQL Server Console\StudentManageDB_data.mdf', --����·����
 size=10KB,--���ݿ��ļ���ʼ��С
 filegrowth=5KB--�����ļ�������	
 )
 --������־�ļ�
 log on
 (
 name = 'StudentManageDB_log',
 filename = 'D:\SQL Server Console\StudentManageDB_log.ldf',--ע���׺����
 size = 5KB,
 filegrowth = 2KB
 )
 go