CREATE PROCEDURE [api_GetEmployeeById]
@Id int
AS
BEGIN
	SELECT Id, FullName, BirthDate, TIN, EmployeeTypeId, IsDeleted from Employee where Id = @Id
END;
