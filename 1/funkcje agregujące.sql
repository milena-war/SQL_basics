--funkcje agreguj¹ce

--suma
select sum(VacationHours)/24 as "suma dni wolnych", sum(VacationHours) as "Suma godzin wolnych"
from HumanResources.Employee

-- MIN, MAX

select max(BirthDate) as "Najm³odszy pracownik", min(BirthDate) as "Najstraszy pracownik"
from HumanResources.Employee

--ZADANIE pracownik który pracuje najd³u¿ej i najkrócej
select GETDATE(), HireDate,
DATEDIFF(year,HireDate, GETDATE()) as "Sta¿ pracy"
from HumanResources.Employee

select max(DATEDIFF(year,HireDate, GETDATE())) as "Maksymalny sta¿ pracy",
min(DATEDIFF(year,HireDate, GETDATE())) as "Minimalny sta¿ pracy"
from HumanResources.Employee

select SUBSTRING(LoginID, 17, 20) as "Pracownik", JobTitle, HireDate
from HumanResources.Employee


--zliczanie liczby rekordów
select count(*) as "Liczba wierszy"
from HumanResources.Employee

select count(OrganizationLevel) as "Liczba wierszy bez NULL"
from HumanResources.Employee

--unikatowe wartoœci
SELECT Distinct JobTitle
from HumanResources.Employee

SELECT count(Distinct JobTitle)
from HumanResources.Employee

--œrednia
select sum(OrganizationLevel)/count(OrganizationLevel) as "Policzona rêcznie œrenia"
FROM HumanResources.Employee

select AVG(OrganizationLevel)
from HumanResources.Employee

select avg(VacationHours) as "Œrednia godzin na urlopie",
avg(SickLeaveHours) as "Œrednia godzin na L4"
from HumanResources.Employee

--Grupowanie 
select JobTitle, sum(VacationHours)/8 as "Suma dni wolnych"
from HumanResources.Employee
Group by JobTitle

select TerritoryID, avg(SalesYTD) as "Œrednia wartoœæ", sum(SalesYTD) as "Suma",
min(SalesYTD) as "Minimalna wartoœæ", max(SalesYTD) as " Maksymalna wartoœæ"
from Sales.SalesPerson
group by TerritoryID