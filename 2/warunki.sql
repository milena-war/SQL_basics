USE AdventureWorks2022
GO

-- warunki
-- musza mie� ten sam typ
select Name,
case name when 'French' then 'Francuski'
when 'Spanish' then 'Hiszpa�ski'
when 'Arabic'  then 'Arabski'
when 'Chinese' then convert(char, getdate(), 104)
end as 'Nazwa j�zyka po Polsku'
from Production.Culture

-- dodawanie warto�ci przy warunku
select BusinessEntityID, MaritalStatus, VacationHours,
case MaritalStatus when 'M' then VacationHours + 8
	else VacationHours 
	end as 'Liczba wolnych godzin po bonusie'
from HumanResources.Employee


select Description,DiscountPct,
case 
	when DiscountPct <= 0.1 then 'Ma�a'
	when DiscountPct <= 0.2 then '�rednia'
	when DiscountPct <= 0.35 then 'Super'
	when DiscountPct <= 0.45 then 'Fanatstyczna'
	else 'Taniej ju� nie b�dzie'
	end as 'Opis promocji'
from Sales.SpecialOffer


select BusinessEntityID, Gender, SickLeaveHours,
case
	when Gender = 'M' and SickLeaveHours <= 40 then 'Zdr�w jak ryba'
	when Gender = 'F' and SickLeaveHours <= 40 then 'Zdrowa jak ryba'
	else 'Wys�a� na badania BHP'
	end as 'Stan zdrowia pracownik�w'
from HumanResources.Employee


select BusinessEntityID, PhoneNumber,
case
	when PhoneNumber like '6%' then 'Telefon zarejestrowany w Orange'
	when PhoneNumber like '8%' then 'Telefon zarejestrowany w Heyah'
	else 'Zmie� sie�'
	end as 'Sieci kom�rkowe pracownik�w'

from Person.PersonPhone
ORDER by BusinessEntityID