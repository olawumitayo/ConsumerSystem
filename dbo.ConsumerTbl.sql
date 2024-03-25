CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [FirstName] NVARCHAR(50) NULL, 
    [LastName] NVARCHAR(50) NULL, 
    [DOB] NVARCHAR(50) NULL, 
    [BusinessType] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [Address] NVARCHAR(MAX) NULL, 
    [PhoneNo] NVARCHAR(11) NULL, 
    [Gender] NVARCHAR(10) NULL
)
