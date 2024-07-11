/*1. Z tabeli Production.Product Wybierz kolumny ProductID, Name i color oraz 
wy�wietl raport kt�ry: poka�e wszystkie produkty maj�ce jak�� warto�� w 
kolumnie color a nast�pnie posortuj raport wg. Koloru i ceny. */

select ProductID, Name, Color
from Production.Product
Where Color is not null
order by Color, ListPrice

/*2. Z tabeli Person.Person wybierz kolumny LastName i FirstName. 
Wybierz osoby kt�ryc imi� zaczyna si� od litery R A nast�pnie posortuj rosn�co wg. Kolumny z 
imieniem i malej�co wg. Kolumny z nazwiskiem. */

select FirstName, LastName
from Person.Person
where FirstName LIKE 'R%'
order by FirstName desc, LastName asc

/*3. Z tabeli Sales.vSalesPerson wy�wietl kolumny BusinessEntityID, LastName, TerritoryName, 
CountryRegionName. Na ich podstawie zbuduj raport wy�wietlaj�cy warto�ci w kolejno�ci wed�ug 
kolumny TerritoryName, gdy kolumna CountryRegionName jest r�wna �Stany 
Zjednoczone�, oraz wed�ug CountryRegionName dla wszystkich pozosta�ych wierszy. */


select BusinessEntityID, LastName, TerritoryName, CountryRegionName
from Sales.vSalesPerson
where TerritoryName is not null
order by case 
CountryRegionName when 'United States' then TerritoryName
else CountryRegionName
end;

/*4. Z tabeli HumanResources.Department wy�wietl kolumny DepartmentID, Name, GroupName. 
Nast�pnie zbuduj raport kt�ry posortuje wynik wg DepartamentID pomijaj�c pierwszych 10 wierszy. */

select DepartmentID, Name, GroupName
from HumanResources.Department
order by DepartmentID 
offset 10 rows