
--SORTOWANIE DANYCH

--ORDER BY  (na koncu zapytania) asc(rosnaco), desc(malej¹co)
select *
from HumanResources.Employee
order by OrganizationLevel desc

select NationalIDNumber, OrganizationLevel, JobTitle
from HumanResources.Employee
order by OrganizationLevel

-- sortowanie wielopoziomowe
select NationalIDNumber, OrganizationLevel, JobTitle
from HumanResources.Employee
order by OrganizationLevel desc, NationalIDNumber

select LoginID, BusinessEntityID, JobTitle, OrganizationLevel, BirthDate,VacationHours
from HumanResources.Employee
order by BirthDate, VacationHours desc

--sortowanie z filtrowaniem
select LoginID, BusinessEntityID, JobTitle, OrganizationLevel, BirthDate,VacationHours
from HumanResources.Employee
where Gender = 'M'
order by BirthDate, VacationHours desc


select LoginID as ID, BusinessEntityID as BID , JobTitle as Stanowisko, 
OrganizationLevel as Poziom, BirthDate as "Data urodzenia" ,VacationHours as "Wykorzystany urlop"
from HumanResources.Employee
where Gender = 'M'
order by [Data urodzenia], [Wykorzystany urlop] desc

--ZADANIE 

select substring(LoginID,17,20) as Login, JobTitle as Stanowisko, HireDate as "data zatrudnienia"
from HumanResources.Employee
where MaritalStatus = 'S'
order by JobTitle desc, HireDate 