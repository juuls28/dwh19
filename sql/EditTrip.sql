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
Set Start_Lon = ROUND(Start_Lon,3),
Start_Lat = ROUND(Start_Lat,3),
End_Lat = ROUND(End_Lat,3),
End_Lon = ROUND(End_Lon,3);


Update Trip
Set StartId = g.ID
From Trip t Inner Join Geo g On t.Start_Lat = g.Latitude and t.Start_Lon = g.Longitude;

Update Trip
Set EndId = g.ID
From Trip t Inner Join Geo g On t.End_Lat = g.Latitude and t.End_Lon = g.Longitude;

Delete From Trip
Where StartId Is Null AND EndId Is Null;