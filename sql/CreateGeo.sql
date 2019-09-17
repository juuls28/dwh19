Drop Table [DWH19-05].[dbo].[Geo];

Create Table [DWH19-05].[dbo].[Geo] (
	ID int IDENTITY(1,1) Primary Key,
	Latitude float,
	Longitude float,
	Borough nvarchar(100),
	Neighbourhood nvarchar(100)
);