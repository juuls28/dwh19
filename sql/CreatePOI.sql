Drop Table [DWH19-05].[dbo].[Point_Of_Interest];

Create Table [DWH19-05].[dbo].[Point_Of_Interest] (
	ID int IDENTITY(1,1) Primary Key,
	Name varchar(100),
	Geom varchar(50),
	Latitude float,
	Longitude float
);

Update p1
Set Longitude = SUBSTRING(p1.geom, CHARINDEX('(', p1.geom) + 1,CHARINDEX(' ', p1.geom, 7) - CHARINDEX('(', p1.geom) -1),
	Latitude =  SUBSTRING(p1.geom, CHARINDEX(' ', p1.geom, 7) + 1,CHARINDEX(')', p1.geom) - CHARINDEX(' ', p1.geom,7) - 1 )
From Point_Of_Interest as p1
Inner Join Point_Of_Interest as p2 ON p1.ID = p2.ID