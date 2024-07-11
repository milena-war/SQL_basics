-- podastawowe zapytanie
select * 
from HumanResources.Employee

-- ³¹czenie dwóch kolumn wraz z uzyceim ciagu znaków, laczenie tekstów
-- substring to funkcja, wyciaga ci¹g znaków z danej tabeli - nazwa_tabeli, start(od któreo znaku), d³ugoœæ do wyci¹gniecia


select substring(LoginID, 17,20) + ' Status zwi¹zku to:' + MaritalStatus as 'Status zwi¹zku pracowników'
from HumanResources.Employee


-- operacje matematyczne

select SickLeaveHours as 'Liczba opuszczonych godzin', cast(SickLeaveHours as float) /8 as 'Liczba opuszczonych dni'
from HumanResources.Employee

--                  FILTROWANIE BAZ DANYCH
-- WHERE
select OrganizationLevel, JobTitle, MaritalStatus, Gender
from HumanResources.Employee
where JobTitle = 'Design Engineer'

--zliczanie iloœci osób
select count(JobTitle) as 'Liczba projektankek w zespole'
from HumanResources.Employee
where JobTitle = 'Design Engineer' and Gender = 'F'

-- filtrowanie DAT
select Gender, JobTitle, BirthDate
from HumanResources.Employee
where BirthDate > '19900101'

--OR
select * 
from HumanResources.Employee
where OrganizationLevel = 1 or OrganizationLevel = 2

-- AND
select Gender, JobTitle, BirthDate
from HumanResources.Employee
where BirthDate > '19900101' and BirthDate < '19910101'

select * 
from HumanResources.Employee
where OrganizationLevel = 1 and JobTitle = 'vice president of engineering'

--BETWEEN
select * 
from HumanResources.Employee
where VacationHours between 30 and 70

--IN
select * 
from HumanResources.Employee
where VacationHours IN(40,42,43,44)

--LIKE
select *
from Person.CountryRegion
WHERE name Like 'C%'

--nazwy od C do E
select *
from Person.CountryRegion
WHERE name Like '[C-E]%'

--nazwa kraju w ktorej znajduje sie litera C
select *
from Person.CountryRegion
WHERE name Like '%C%'

--IS
select * 
from HumanResources.Employee
where OrganizationLevel is null