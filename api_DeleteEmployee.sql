CREATE PROCEDURE [dbo].[api_DeleteEmployee]
@Id int
AS
BEGIN
	DELETE FROM Employee WHERE Id = @Id;
END