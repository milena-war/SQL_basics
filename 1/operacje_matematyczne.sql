-- operacje matematyczne na kwotach

select BusinessEntityID, Rate,
Rate + 10 as "stawka + 10",
rate - 10 as  "stawka - 10",
rate * 4 as "400%"
from HumanResources.EmployeePayHistory

select 30000/15000 as 'wynik'

--reszta z dzielenia
select 350 % 200

-- zmiennoprzecinkowe
select cast(3000 as float)/5000 as 'wynik'

select 350.00/500 as 'wynik'

--zaokr¹glanie liczb

select round(8.86, 1)

select round(cast(3000 as float)/5000, 2) as 'wynik'

select BusinessEntityID, Rate,
round(Rate, 2) as "Zaokr¹glona",
round(Rate, -1) as "Zaokr¹glona do 0 miejsc",
round(Rate, 2,1) as "Pseudozaokr¹glenie"
from HumanResources.EmployeePayHistory

select BusinessEntityID, Rate,
floor(rate) as "Zaokr¹glij do do³u",
ceiling(rate) as "Zaokr¹glij do góry"
from HumanResources.EmployeePayHistory