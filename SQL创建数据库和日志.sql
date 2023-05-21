use master
go
--创建数据库
 create database StudentManageDB
 on primary
 (
 name = 'StudentManageDB_data',--数据库文件的逻辑名
 Filename='D:\SQL Server Console\StudentManageDB_data.mdf', --绝对路径名
 size=10KB,--数据库文件初始大小
 filegrowth=5KB--数据文件增长量	
 )
 --创建日志文件
 log on
 (
 name = 'StudentManageDB_log',
 filename = 'D:\SQL Server Console\StudentManageDB_log.ldf',--注意后缀区别
 size = 5KB,
 filegrowth = 2KB
 )
 go