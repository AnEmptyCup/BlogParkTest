/*
   2014年8月19日22:31:41
   用户: sa
   服务器: .
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
CREATE TABLE dbo.MemberInfo
	(
	MemberID int NOT NULL IDENTITY (1, 1),
	MemberName nvarchar(50) NULL,
	Nickname nvarchar(50) NULL,
	TruethName nvarchar(20) NULL,
	MemberSex int NULL,
	MarryState int NULL,
	FamilyAddress nvarchar(500) NULL,
	NewAddress nvarchar(500) NULL,
	CompanyName nvarchar(500) NULL,
	JobName nvarchar(500) NULL,
	JobState int NULL,
	ShelfIntroduction nvarchar(1000) NULL,
	QQNumber nvarchar(20) NULL,
	MSNNumber nvarchar(50) NULL,
	LoginPassword nvarchar(100) NULL,
	MemberEmail nvarchar(100) NULL,
	PhoneNumber nvarchar(20) NULL
	)  ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'会员ID'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'MemberID'
GO
DECLARE @v sql_variant 
SET @v = N'会员名称'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'MemberName'
GO
DECLARE @v sql_variant 
SET @v = N'会员昵称（显示名称）'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'Nickname'
GO
DECLARE @v sql_variant 
SET @v = N'姓名'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'TruethName'
GO
DECLARE @v sql_variant 
SET @v = N'会员性别（1 男  2女）'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'MemberSex'
GO
DECLARE @v sql_variant 
SET @v = N'婚姻状态（ 单身1 热恋 2 订婚 3 已婚 4 离异 5）'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'MarryState'
GO
DECLARE @v sql_variant 
SET @v = N'故乡地址'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'FamilyAddress'
GO
DECLARE @v sql_variant 
SET @v = N'现居地'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'NewAddress'
GO
DECLARE @v sql_variant 
SET @v = N'公司名称'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'CompanyName'
GO
DECLARE @v sql_variant 
SET @v = N'职位'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'JobName'
GO
DECLARE @v sql_variant 
SET @v = N'工作状态（1 学生 2 在职 3 待业 4 其他）'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'JobState'
GO
DECLARE @v sql_variant 
SET @v = N' 自我介绍'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'ShelfIntroduction'
GO
DECLARE @v sql_variant 
SET @v = N'QQ号'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'QQNumber'
GO
DECLARE @v sql_variant 
SET @v = N'MSN'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'MSNNumber'
GO
DECLARE @v sql_variant 
SET @v = N'登陆密码'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'LoginPassword'
GO
DECLARE @v sql_variant 
SET @v = N'用户邮箱'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'MemberEmail'
GO
DECLARE @v sql_variant 
SET @v = N'手机号'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'MemberInfo', N'COLUMN', N'PhoneNumber'
GO
ALTER TABLE dbo.MemberInfo ADD CONSTRAINT
	PK_MemberInfo PRIMARY KEY CLUSTERED 
	(
	MemberID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.MemberInfo SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MemberInfo', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MemberInfo', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MemberInfo', 'Object', 'CONTROL') as Contr_Per 