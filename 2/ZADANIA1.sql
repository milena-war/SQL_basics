/*1. Z tabeli production.productinventory wyœwietl:  sumê z Quantity dla ka¿dego produktu, który 
znajduje siê na pó³kach(shelf) A, C lub H . Wyfiltruj wyniki, gdzie suma jest wiêksza ni¿ 500. 
Wyœtiwetl tylko sumê z quantity oraz product id. Posortuj ca³oœæ wg productid malej¹co. */


select ProductID, sum(Quantity) as Quantity_Sum
from Production.ProductInventory
where Shelf IN ('A', 'C', 'H')
group by ProductID
having sum(Quantity) > 500
order by ProductID desc
	

/*2.Wykorzystuj¹c tabelê person.person oraz person.personphone wyœwietl BusinessEntityID, 
FirstName, LastName, PhoneNumber. Wyœwietl tylko osoby, których nazwisko zaczyna 
siê od litery K. Posortuj ca³oœæ rosn¹co wg imienia oraz nazwsika. 
Zwróæ uwagê na to, ¿e musisz wykonaæ po³¹czenie pomiêdzy tabelami. */

select *
from Person.Person 
select *
from Person.PersonPhone

select PP.BusinessEntityID, FirstName,LastName,PhoneNumber
from Person.Person as PP, Person.PersonPhone as PPP
WHERE PP.BusinessEntityID = PPP.BusinessEntityID and LastName LIKE 'K%'
order by FirstName, LastName 

select PP.BusinessEntityID, PP.FirstName,PP.LastName,PPP.PhoneNumber as Telefon_Pracownika
from Person.Person as PP
JOIN
Person.PersonPhone as PPP
ON PP.BusinessEntityID = PPP.BusinessEntityID
where LastName LIKE 'K%'
order by FirstName, LastName 

/*3.Wykorzystuj¹c tabele Person.BusinessEntityAddress oraz Person.Address policz, ilu pracowników 
zamieszkuje ka¿de z miast. Wylistuj miasta i liczbê praconiwków. Ca³oœæ posostruj rosn¹co */

select *
from Person.BusinessEntityAddress
select*
from Person.Address

select  PA.city as Miasto, count(PBEA.AddressID) as Liczba_pracowników
from Person.BusinessEntityAddress as PBEA
JOIN
Person.Address as PA
ON
PBEA.AddressID = PA.AddressID
group by Pa.City
order by City


/*4. Z tabeli Sales.SalesOrderDetail wygeneruj listê sumê wartoœci zamówieñ. PodpowiedŸ: wartoœæ 
zamówienia to iloraz liczby sztuk oraz kosztu. Ca³oœæ zgrupuj wg. ID zamówienia, oraz posortuj 
wg. Tej samej wartoœci malej¹co. */

select SalesOrderID, sum(OrderQty * UnitPrice) as Suma_wartosci_zamowien
from Sales.SalesOrderDetail
group by SalesOrderID
order by Suma_wartosci_zamowien desc


select SalesOrderID, floor(sum(OrderQty * UnitPrice)) as Suma_wartosci_zamowien
from Sales.SalesOrderDetail
group by SalesOrderID
order by SalesOrderID
-- zamowienie 43659 - suma price (order QTY * UnitPrice)
use AdventureWorks2022
go