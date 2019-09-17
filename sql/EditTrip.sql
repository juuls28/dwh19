Update Trip
Set Start_Lat = Start_Lat/10E+14,
	End_Lat = End_Lat/10E+14,
	Start_Lon = Start_Lon/10E+14,
	End_Lon = End_Lon/10E+14;

Delete From Trip
Where Start_Lat > 50 Or Start_Lat < 30;

Delete From Trip
Where End_Lat > 50 Or End_Lat < 30;

Delete From Trip
Where Start_Lon < -80 Or Start_Lon > -60;

Delete From Trip
Where End_Lon < -80 Or End_Lon > -60;

Update Trip
Set Date = CAST(Pickup_DateTime as date);

Update Trip
Set WeatherId = w.ID
From Trip t Inner Join JFK_Weather w On t.date = w.date;

Update Trip
Set StartId = p.ID
From Trip t Inner Join Point_Of_Interest p On Round(t.Start_Lat,4) = Round(p.Latitude,4) and Round(t.Start_Lon,4) = Round(p.Longitude,4);

Update Trip
Set EndId = p.ID
From Trip t Inner Join Point_Of_Interest p On Round(t.End_Lat,4) = Round(p.Latitude,4) and Round(t.End_Lon,4) = Round(p.Longitude,4)