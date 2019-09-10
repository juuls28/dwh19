Drop Table [DWH19-05].[dbo].[JFK_Weather];

Create Table [DWH19-05].[dbo].[JFK_Weather] (
	ID int IDENTITY(1,1) Primary Key,
	Date Date,
	Weather_Type varchar,
	Temp_Avg float
);