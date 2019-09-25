Delete From Point_Of_Interest
Where ID IN(
Select P.ID
From Trip T Right Outer Join Point_Of_Interest P On T.StartPOI = P.ID
Group By P.ID
Having Count(T.ID) < 5000
)