CREATE PROCEDURE [api_SaveEmployee]
(
@FullName NVARCHAR(100),
@BirthDate DATETIME,
@TIN NVARCHAR(100),
@EmployeeTypeId INT
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @newEmployeeTbl TABLE (
		Id int,
		FullName NVARCHAR(100),
		BirthDate DATETIME,
		TIN NVARCHAR(100),
		EmployeeTypeId INT
	);
	INSERT INTO [dbo].[Employee]
           ([FullName]
           ,[BirthDate]
           ,[TIN]
           ,[EmployeeTypeId]
           ,[IsDeleted])
	OUTPUT
		inserted.Id,
		inserted.FullName,
		inserted.BirthDate,
		inserted.TIN,
		inserted.EmployeeTypeId
	INTO
		@newEmployeeTbl
     VALUES
           (@FullName
           ,@BirthDate
           ,@TIN
           ,@EmployeeTypeId
           ,0)


	SELECT
		Id,
		FullName,
		BirthDate,
		TIN,
		EmployeeTypeId
	FROM
		@newEmployeeTbl
END;