Drop Table [DWH19-05].[dbo].[Point_Of_Interest];

Create Table [DWH19-05].[dbo].[Point_Of_Interest] (
	ID int IDENTITY(1,1) Primary Key,
	Name varchar,
	Geom varchar,
	Address varchar
);