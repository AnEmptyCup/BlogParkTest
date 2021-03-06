/*
   2014年8月21日15:05:16
   用户: sa
   服务器: localhost
   数据库: BlogPark
   应用程序: 
*/

/* 为了防止任何可能出现的数据丢失问题，您应该先仔细检查此脚本，然后再在数据库设计器的上下文之外运行此脚本。*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.MemberInfo ADD
	MemberState int NULL
GO
DECLARE @v sql_variant 
SET @v = N'会员状态（1 正常 2 限制登录 3 注销 4 非法账户）'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'MemberState'
GO
ALTER TABLE dbo.MemberInfo SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
