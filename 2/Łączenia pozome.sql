-- £¥CZENIA

select *
from HumanResources.EmployeeDepartmentHistory

select *
from HumanResources.Shift

select EDP.BusinessEntityID, ZM.Name
from HumanResources.EmployeeDepartmentHistory EDP, HumanResources.Shift ZM
where EDP.ShiftID = ZM.ShiftID
order by BusinessEntityID

--INNER JOIN - z³¹czenie wewnêtrzne

select EDP.BusinessEntityID, ZM.Name
from HumanResources.EmployeeDepartmentHistory EDP
INNER join HumanResources.Shift ZM
ON EDP.ShiftID = ZM.ShiftID
order by BusinessEntityID

select EDP.BusinessEntityID,PP.FirstName, PP.LastName, ZM.Name
from HumanResources.EmployeeDepartmentHistory EDP
INNER join HumanResources.Shift ZM
ON EDP.ShiftID = ZM.ShiftID
inner join Person.Person as PP 
on PP.BusinessEntityID = EDP.BusinessEntityID
order by Name

select * 
from HumanResources.Employee

select * 
from Production.Document

select EMP.OrganizationNode, DOC.*
from HumanResources.Employee EMP
inner join Production.Document DOC
on EMP.OrganizationNode= DOC.DocumentNode

-- LEFT JOIN (left outer join) 

select EMP.OrganizationNode, DOC.*
from HumanResources.Employee EMP
LEFT JOIN Production.Document DOC
on EMP.OrganizationNode= DOC.DocumentNode

--RIGHT JOIN
select EMP.OrganizationNode, DOC.*
from HumanResources.Employee EMP
RIGHT join Production.Document DOC
on EMP.OrganizationNode= DOC.DocumentNode

--FULL JOIN

select EMP.OrganizationNode, DOC.*
from HumanResources.Employee EMP
full join Production.Document DOC
on EMP.OrganizationNode= DOC.DocumentNode

-- iloczyn kartezjañski (wynikiem bedzie przemno¿enie tab1 z tab2) CROSS JOIN - nie okreslamy relacji
select EMP.OrganizationNode, DOC.*
from HumanResources.Employee EMP
cross join Production.Document as DOC
WHERE Owner = 217