Drop Table [DWH19-05].[dbo].[Trip];

Create Table [DWH19-05].[dbo].[Trip] (
	ID int IDENTITY(1,1) Primary Key,
	Trip_Type nchar(12),
	Pickup_DateTime Datetime Not Null,
	Passenger_Count Integer,
	Start_Lon float,
	Start_Lat float,
	End_Lon float,
	End_Lat float,
	Payment_Type Integer,
	Tip_Amt float,
	Total_Amt float
);

Update [DWH19-05].[dbo].[Trip]
Set Trip_Type = 'green'
Where Trip_Type IS NULL;

Update [DWH19-05].[dbo].[Trip]
Set Trip_Type = 'yellow'
Where Trip_Type IS NULL;

