-- podastawowe zapytanie
select * 
from HumanResources.Employee

-- ��czenie dw�ch kolumn wraz z uzyceim ciagu znak�w, laczenie tekst�w
-- substring to funkcja, wyciaga ci�g znak�w z danej tabeli - nazwa_tabeli, start(od kt�reo znaku), d�ugo�� do wyci�gniecia


select substring(LoginID, 17,20) + ' Status zwi�zku to:' + MaritalStatus as 'Status zwi�zku pracownik�w'
from HumanResources.Employee


-- operacje matematyczne

select SickLeaveHours as 'Liczba opuszczonych godzin', cast(SickLeaveHours as float) /8 as 'Liczba opuszczonych dni'
from HumanResources.Employee

--                  FILTROWANIE BAZ DANYCH
-- WHERE
select OrganizationLevel, JobTitle, MaritalStatus, Gender
from HumanResources.Employee
where JobTitle = 'Design Engineer'

--zliczanie ilo�ci os�b
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