/*1. Z tabel Production.Product oraz Sales.SalesOrderDetail wyœwietl raport w którym 
po³¹czysz tabele wg kolumn SalesOrderDetail oraz Product ID. Jako rezultat poka¿ raport zawieraj¹cy 
nazwê produktu oraz SalesOrderID */

select PP.Name,  SalesOrderID 
from Production.Product as PP
FULL OUTER JOIN
Sales.SalesOrderDetail as SSOD
ON PP.ProductID = SSOD.ProductID
where SSOD.SalesOrderID is not null
order by PP.Name


/*2. Z tabel Person.Address oraz Person.StateProvince stwórz raport, który wyœwietli adres 
korespondencyjny dowolnej firmy znajduj¹cej siê poza Stanami Zjednoczonymi (US) i w mieœcie, 
którego nazwa zaczyna siê na „Pa”. Zwróæ kolumny: Addressline1, Addressline2, city, postalcode, countryregioncode */

select AddressLine1, AddressLine2, City, PostalCode, CountryRegionCode
from Person.Address as PA
JOIN
Person.StateProvince as PSP
ON PA.StateProvinceID = PSP.StateProvinceID
WHERE CountryRegionCode != 'US' AND City LIKE 'Pa%'
-- WHERE CountryRegionCode NOT IN ('US') AND City LIKE 'Pa%'


