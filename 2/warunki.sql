USE AdventureWorks2022
GO

-- warunki
-- musza mieæ ten sam typ
select Name,
case name when 'French' then 'Francuski'
when 'Spanish' then 'Hiszpañski'
when 'Arabic'  then 'Arabski'
when 'Chinese' then convert(char, getdate(), 104)
end as 'Nazwa jêzyka po Polsku'
from Production.Culture

-- dodawanie wartoœci przy warunku
select BusinessEntityID, MaritalStatus, VacationHours,
case MaritalStatus when 'M' then VacationHours + 8
	else VacationHours 
	end as 'Liczba wolnych godzin po bonusie'
from HumanResources.Employee


select Description,DiscountPct,
case 
	when DiscountPct <= 0.1 then 'Ma³a'
	when DiscountPct <= 0.2 then 'Œrednia'
	when DiscountPct <= 0.35 then 'Super'
	when DiscountPct <= 0.45 then 'Fanatstyczna'
	else 'Taniej ju¿ nie bêdzie'
	end as 'Opis promocji'
from Sales.SpecialOffer


select BusinessEntityID, Gender, SickLeaveHours,
case
	when Gender = 'M' and SickLeaveHours <= 40 then 'Zdrów jak ryba'
	when Gender = 'F' and SickLeaveHours <= 40 then 'Zdrowa jak ryba'
	else 'Wys³aæ na badania BHP'
	end as 'Stan zdrowia pracowników'
from HumanResources.Employee


select BusinessEntityID, PhoneNumber,
case
	when PhoneNumber like '6%' then 'Telefon zarejestrowany w Orange'
	when PhoneNumber like '8%' then 'Telefon zarejestrowany w Heyah'
	else 'Zmieñ sieæ'
	end as 'Sieci komórkowe pracowników'

from Person.PersonPhone
ORDER by BusinessEntityID