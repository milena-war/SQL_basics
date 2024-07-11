/*1. Z tabeli Production.Product Wybierz kolumny ProductID, Name i color oraz 
wyœwietl raport który: poka¿e wszystkie produkty maj¹ce jak¹œ wartoœæ w 
kolumnie color a nastêpnie posortuj raport wg. Koloru i ceny. */

select ProductID, Name, Color
from Production.Product
Where Color is not null
order by Color, ListPrice

/*2. Z tabeli Person.Person wybierz kolumny LastName i FirstName. 
Wybierz osoby któryc imiê zaczyna siê od litery R A nastêpnie posortuj rosn¹co wg. Kolumny z 
imieniem i malej¹co wg. Kolumny z nazwiskiem. */

select FirstName, LastName
from Person.Person
where FirstName LIKE 'R%'
order by FirstName desc, LastName asc

/*3. Z tabeli Sales.vSalesPerson wyœwietl kolumny BusinessEntityID, LastName, TerritoryName, 
CountryRegionName. Na ich podstawie zbuduj raport wyœwietlaj¹cy wartoœci w kolejnoœci wed³ug 
kolumny TerritoryName, gdy kolumna CountryRegionName jest równa „Stany 
Zjednoczone”, oraz wed³ug CountryRegionName dla wszystkich pozosta³ych wierszy. */


select BusinessEntityID, LastName, TerritoryName, CountryRegionName
from Sales.vSalesPerson
where TerritoryName is not null
order by case 
CountryRegionName when 'United States' then TerritoryName
else CountryRegionName
end;

/*4. Z tabeli HumanResources.Department wyœwietl kolumny DepartmentID, Name, GroupName. 
Nastêpnie zbuduj raport który posortuje wynik wg DepartamentID pomijaj¹c pierwszych 10 wierszy. */

select DepartmentID, Name, GroupName
from HumanResources.Department
order by DepartmentID 
offset 10 rows