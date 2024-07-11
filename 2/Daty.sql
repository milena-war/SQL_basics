--DATY

--ustawienie formatu na europejski
set dateformat dmy

-- SQL bazowo przyjmuj format amaeryka�skiej daty
select
month('08-07-2024') as miesi�c

select
day('08-07-2024') as dzie�

select 
year('08-07-2024') as rok

-- DATEDIFF
select DATEDIFF(year, '1994-07-19', getdate()) as "Ile mam lat"

--DATEADD
select DATEADD(day,10, getdate()) as "Za 10 dni"

--DATEPART
select DATEPART(weekday, getdate()) as "Dzie� tygodnia"

--DATENAME
select DATENAME(weekday, getdate()) as "Dzie� tygodnia s�ownie"

--DATEFROMPARTS - format daty
select DATEFROMPARTS(2020,09,30) as "Data"

-- ZADANIE wy�wietl date dzisiejsza(dzie�, miesi�c i rok), dzie� tygodnia s�ownie, te same operacje dla daty urodzenia

select getdate() as "Dzie� dzisiejszy",
day(getdate()) as "Dzie� dzisiejszy - dzie�",
month(getdate()) as "Dzie� dzisiejszy- miesi�c",
Datename(month, (getdate())) as "Dzie� dzisiejszy- miesi�c",
year(getdate()) as "Dzie� dzisiejszy-rok"

select 
day('19-07-1994') as "Dzie� urodzenia",
DATENAME(WEEKDAY,'19-07-1994') as "Dzie� tygodnia moich urodzin",
month('19-07-1994') as "Miesi�c urodzenia",
year('19-07-1994') as "Rok urodzenia"