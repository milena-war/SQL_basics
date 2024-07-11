-- PODZAPYTANIA

--zagnie¿d¿anie
select * 
from HumanResources.Employee
where SickLeaveHours > 
	(select SickLeaveHours 
		from HumanResources.Employee
		where JobTitle = 'Chief Executive Officer')

select BusinessEntityID, VacationHours, MaritalStatus
from HumanResources.Employee
where VacationHours>(select VacationHours
					from HumanResources.Employee 
					Where BusinessEntityID = 21)
						and MaritalStatus =(select MaritalStatus
							from HumanResources.Employee
							where BusinessEntityID = 21)

-- podzapytania z u¿yciem funkcji agreguj¹cych
select BusinessEntityID, VacationHours, JobTitle
from HumanResources.Employee
where VacationHours > (
select AVG(vacationhours)
from HumanResources.Employee)


select *
from (select BusinessEntityID, SickLeaveHours 
		from HumanResources.Employee) as Podzapytanie
		where SickLeaveHours between 30 and 65

-- PODZAPYTANIA WIELOWIERSZOWE wymaga u¿ycia IN,ANY, ALL a ka¿dy z tyvh operatorów wymaga u¿ycia =, >, <, <>

--IN - zwraca wszystkie równe wartoœci elementom z listy
select Name, AnnualSales, YearOpened, NumberEmployees
from Sales.vStoreWithDemographics
where NumberEmployees IN (select distinct NumberEmployees
							from Sales.vStoreWithDemographics
								where YearOpened= 1990)
					and yearopened <>'1990'
					order by NumberEmployees

--ANY
select Name, AnnualSales, YearOpened, NumberEmployees
from Sales.vStoreWithDemographics
where NumberEmployees < ANY (select distinct NumberEmployees
							from Sales.vStoreWithDemographics
								where YearOpened= 1990)
					and yearopened <>'1990'
					order by NumberEmployees desc

--ALL - poka¿ wszystkie rekordy znajduj¹ce siê powyzej/ponizej 
select Name, AnnualSales, YearOpened, NumberEmployees
from Sales.vStoreWithDemographics
where NumberEmployees < ALL (select distinct NumberEmployees
							from Sales.vStoreWithDemographics
								where YearOpened= 1990)
					and yearopened <>'1990'
					order by NumberEmployees desc


select BusinessEntityID, PersonType, FirstName, MiddleName, LastName
from Person.Person
where len(FirstName) > 
			(select count(FirstName) 
			from Person.Person
			where FirstName = 'Ken')
			AND LastName LIKE 'C%'