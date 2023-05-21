use master
go
--判断当前数据库是否存在
if exists(select*from sysdatabases where name = 'StudentManageDB')--检查任何有这个名字的数据库，有为true
drop database StudentManageDB--删除这个数据库
go

create database StudentManageDB
on primary
(
name = 'StudentManageDB_data1',
filename = 'D:\SQL Server Console\if判断\StudentManageDB_data1.mdf',
size = 1MB,
filegrowth = 500KB
),
(
name = 'StudentManageDB_data2',
filename = 'D:\SQL Server Console\if判断\StudentManageDB_data2.mdf',
size = 1MB,
filegrowth =500 KB
)
log on 
(
name = 'StudentManageDB_log1',
filename = 'D:\SQL Server Console\if判断\StudentManageDB_log1.ldf',
size = 700KB,
filegrowth = 300KB
),
(
name = 'StudentManageDB_log2',
filename = 'D:\SQL Server Console\if判断\StudentManageDB_log2.ldf',
size = 700KB,
filegrowth = 300KB
)
go
