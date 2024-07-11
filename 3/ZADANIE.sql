/*1. Z tabel Production.Product oraz Sales.SalesOrderDetail wy�wietl raport w kt�rym 
po��czysz tabele wg kolumn SalesOrderDetail oraz Product ID. Jako rezultat poka� raport zawieraj�cy 
nazw� produktu oraz SalesOrderID */

select PP.Name,  SalesOrderID 
from Production.Product as PP
FULL OUTER JOIN
Sales.SalesOrderDetail as SSOD
ON PP.ProductID = SSOD.ProductID
where SSOD.SalesOrderID is not null
order by PP.Name


/*2. Z tabel Person.Address oraz Person.StateProvince stw�rz raport, kt�ry wy�wietli adres 
korespondencyjny dowolnej firmy znajduj�cej si� poza Stanami Zjednoczonymi (US) i w mie�cie, 
kt�rego nazwa zaczyna si� na �Pa�. Zwr�� kolumny: Addressline1, Addressline2, city, postalcode, countryregioncode */

select AddressLine1, AddressLine2, City, PostalCode, CountryRegionCode
from Person.Address as PA
JOIN
Person.StateProvince as PSP
ON PA.StateProvinceID = PSP.StateProvinceID
WHERE CountryRegionCode != 'US' AND City LIKE 'Pa%'
-- WHERE CountryRegionCode NOT IN ('US') AND City LIKE 'Pa%'


