use master
go
--�жϵ�ǰ���ݿ��Ƿ����
if exists(select*from sysdatabases where name = 'StudentManageDB')--����κ���������ֵ����ݿ⣬��Ϊtrue
drop database StudentManageDB--ɾ��������ݿ�
go

create database StudentManageDB
on primary
(
name = 'StudentManageDB_data1',
filename = 'D:\SQL Server Console\if�ж�\StudentManageDB_data1.mdf',
size = 1MB,
filegrowth = 500KB
),
(
name = 'StudentManageDB_data2',
filename = 'D:\SQL Server Console\if�ж�\StudentManageDB_data2.mdf',
size = 1MB,
filegrowth =500 KB
)
log on 
(
name = 'StudentManageDB_log1',
filename = 'D:\SQL Server Console\if�ж�\StudentManageDB_log1.ldf',
size = 700KB,
filegrowth = 300KB
),
(
name = 'StudentManageDB_log2',
filename = 'D:\SQL Server Console\if�ж�\StudentManageDB_log2.ldf',
size = 700KB,
filegrowth = 300KB
)
go
