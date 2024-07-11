--DATY

--ustawienie formatu na europejski
set dateformat dmy

-- SQL bazowo przyjmuj format amaerykañskiej daty
select
month('08-07-2024') as miesi¹c

select
day('08-07-2024') as dzieñ

select 
year('08-07-2024') as rok

-- DATEDIFF
select DATEDIFF(year, '1994-07-19', getdate()) as "Ile mam lat"

--DATEADD
select DATEADD(day,10, getdate()) as "Za 10 dni"

--DATEPART
select DATEPART(weekday, getdate()) as "Dzieñ tygodnia"

--DATENAME
select DATENAME(weekday, getdate()) as "Dzieñ tygodnia s³ownie"

--DATEFROMPARTS - format daty
select DATEFROMPARTS(2020,09,30) as "Data"

-- ZADANIE wyœwietl date dzisiejsza(dzieñ, miesi¹c i rok), dzieñ tygodnia s³ownie, te same operacje dla daty urodzenia

select getdate() as "Dzieñ dzisiejszy",
day(getdate()) as "Dzieñ dzisiejszy - dzieñ",
month(getdate()) as "Dzieñ dzisiejszy- miesi¹c",
Datename(month, (getdate())) as "Dzieñ dzisiejszy- miesi¹c",
year(getdate()) as "Dzieñ dzisiejszy-rok"

select 
day('19-07-1994') as "Dzieñ urodzenia",
DATENAME(WEEKDAY,'19-07-1994') as "Dzieñ tygodnia moich urodzin",
month('19-07-1994') as "Miesi¹c urodzenia",
year('19-07-1994') as "Rok urodzenia"