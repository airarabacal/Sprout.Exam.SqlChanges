DROP TABLE Employee;

CREATE TABLE [dbo].[Employee] (
	Id INT IDENTITY(1, 1) NOT NULL,
	FullName NVARCHAR(100) NOT NULL,
	BirthDate DATETIME NOT NULL,
	TIN NVARCHAR(100) NOT NULL,
	EmployeeTypeId INT NOT NULL,
	IsDeleted bit CONSTRAINT [DF_Employee_IsDeleted] DEFAULT((0)) NOT NULL,
	CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([Id] ASC)
)