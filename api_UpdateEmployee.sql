CREATE PROCEDURE [api_UpdateEmployee]
(
@Id int,
@FullName NVARCHAR(100),
@BirthDate DATETIME,
@TIN NVARCHAR(100),
@EmployeeTypeId INT
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @updatedEmployeeTbl TABLE (
		Id int,
		FullName NVARCHAR(100),
		BirthDate DATETIME,
		TIN NVARCHAR(100),
		EmployeeTypeId INT
	);
	UPDATE Employee set FullName = @FullName, @BirthDate = @BirthDate, TIN = @TIN, EmployeeTypeId = @EmployeeTypeId
	OUTPUT
		inserted.Id,
		inserted.FullName,
		inserted.BirthDate,
		inserted.TIN,
		inserted.EmployeeTypeId
	INTO @updatedEmployeeTbl
	WHERE Id = @Id


	SELECT
		Id,
		FullName,
		BirthDate,
		TIN,
		EmployeeTypeId
	FROM
		@updatedEmployeeTbl
END;