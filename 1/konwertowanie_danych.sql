--TYPY DANYCH I KONERTOWANIE

--wyœwietlenie typu danych
exec sp_help 'humanresources.employee'

--zmiana typów
select cast(NationalIDNumber as bigint) as Nowy
from HumanResources.Employee
order by Nowy

select cast(VacationHours as float)/8
from HumanResources.Employee

-- data i godzina
select GETDATE() as "Data i godzina dzisiejsza"

select GETDATE() as "Data i godzina dzisiejsza",
cast(getdate() as date) as "Data dzisiejsza"

--obliczenie ró¿nicy dat
select HireDate, cast(getdate() as date) as "Dzieñ dzisiejszy",
datediff(year, HireDate, cast(getdate() as date)) as "Przepracowane lata"
from HumanResources.Employee

select HireDate, cast(getdate() as date) as "Dzieñ dzisiejszy",
datediff(MONTH, HireDate, cast(getdate() as date)) as "Przepracowane miesi¹ce"
from HumanResources.Employee

-- tworzenie ci¹gu tekstowego z u¿yciem daty
select 'Dziœ jest ' + DATENAME(weekday, getdate()) + ': ' + convert(varchar(10), getdate(), 104) as "Aktualna data"

