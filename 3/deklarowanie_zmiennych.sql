--deklarowanie zmiennej
-- zmienne lokalne  (maks 128 znakow, bez polskich i specjalnych znakow) 
-- sk�adnia DECLARE ... SET ...
-- nale�y wykona� polecenie wraz z zadeklarowan� zmienna

declare @pozycja varchar(50)
set @pozycja = 'Recruiter'

select BusinessEntityID, JobTitle, HireDate
from HumanResources.Employee
where @pozycja = JobTitle


declare @data varchar(20)
set @data = '20090101'

select BusinessEntityID, JobTitle, HireDate
from HumanResources.Employee
where @data > HireDate
order by HireDate