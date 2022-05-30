CREATE DATABASE SEDCACADEMYDB

CREATE TABLE dbo.Students
(
 [Id] int identity (1,1),
 [FirstName] nvarchar (100),
 [LastName] nvarchar (100),
 [DateOfBirth] date NULL,
 [EnrolledDate] date NULL,
 [Gender] nchar (1) NULL,
 [NationalIdNumber] nvarchar (20) NULL,
 [StudentIdNumber] nvarchar (10) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED (Id)
)

SELECT * FROM dbo.Students

CREATE TABLE dbo.Teachers 
(
 [Id] int identity (1,1),
 [FirstName] nvarchar (100),
 [LastName] nvarchar (100),
 [DateOfBirth] date NULL,
 [AcademicRank] nvarchar (20) NULL,
 [HireDate] date NULL,
 Constraint [PK_Teachers] PRIMARY KEY CLUSTERED (Id)
)

SELECT * FROM dbo.Teachers

CREATE TABLE dbo.Grades
(
  [Id] int identity (1,1),
  [StudentID] int NULL,
  [CourseID] int NULL,
  [TeacherID] int NULL,
  [Grade] decimal (18,2) NULL,
  [Comment] nvarchar(MAX) NULL,
  [CreatedDate] date NULL,
  Constraint [PK_Grades] PRIMARY KEY CLUSTERED (Id)
)

SELECT * FROM dbo.Grades

CREATE TABLE dbo.Courses
(
  [Id] int identity (1,1),
  [Name] nvarchar (100),
  [Credit] decimal (18,2) NULL,
  [AcademicYear] int NULL,
  [Semester] int NULL,
  Constraint [PK_Courses] PRIMARY KEY CLUSTERED (Id)
)

SELECT * FROM dbo.Courses

CREATE TABLE dbo.GradeDetails
(
  [Id] int identity (1,1),
  [GradeID] bigint NULL,
  [AchievementTypeID] nvarchar (100) NULL,
  [AchievementPoints] int NULL,
  [AchievementMaxPoints] nvarchar (Max) NULL,
  [AchievementDate] date NULL,
  Constraint [PK_GradeDetails] PRIMARY KEY CLUSTERED (Id)
)

SELECT * FROM dbo.GradeDetails

CREATE TABLE dbo.AchievementTypes
(
  [Id] int identity (1,1),
  [Name] nvarchar (100),
  [Description] nvarchar (MAX) NULL,
  [ParticipationRate] nchar (1) NULL,
  Constraint [PK_AchievementTypes] PRIMARY KEY CLUSTERED (Id)
)

SELECT * FROM dbo.AchievementTypes