--Sprawdzanie typu danych

--ISNUMERIC
select ISNUMERIC(BusinessEntityID)
from HumanResources.Employee

--ISDATE
select ISDATE(cast(BirthDate as char))
from HumanResources.Employee

select ISDATE('20240707')
select ISDATE('07-07-2024')

--ISNULL
select StartDate, isnull(EndDate, GETDATE()) as "Koniec pracy"
from HumanResources.EmployeeDepartmentHistory
order by EndDate desc
 
 --
select JobCandidateID, isnull(cast(BusinessEntityID as char), 'Nie przyjêto do pracy') as BusinessEntityID
from HumanResources.JobCandidate