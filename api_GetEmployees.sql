CREATE PROCEDURE [api_GetEmployees]
AS
BEGIN
	SELECT Id, FullName, BirthDate, TIN, EmployeeTypeId, IsDeleted from Employee
END;
