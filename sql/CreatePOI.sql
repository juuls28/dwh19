Drop Table [DWH19-05].[dbo].[Point_Of_Interest];

Create Table [DWH19-05].[dbo].[Point_Of_Interest] (
	ID int IDENTITY(1,1) Primary Key,
	Name varchar(100),
	Geom varchar(50),
	Latitude varchar(20),
	Longitude varchar(20)
);

Update p1
Set Latitude = SUBSTRING(p1.Geom, 8, 18),
	Longitude = SUBSTRING(p1.Geom, 26, (CHARINDEX(')', p1.Geom) - 26))
From Point_Of_Interest as p1
Inner Join Point_Of_Interest as p2 ON p1.ID = p2.ID