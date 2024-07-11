/*1. Z tabeli production.productinventory wy�wietl:  sum� z Quantity dla ka�dego produktu, kt�ry 
znajduje si� na p�kach(shelf) A, C lub H . Wyfiltruj wyniki, gdzie suma jest wi�ksza ni� 500. 
Wy�tiwetl tylko sum� z quantity oraz product id. Posortuj ca�o�� wg productid malej�co. */


select ProductID, sum(Quantity) as Quantity_Sum
from Production.ProductInventory
where Shelf IN ('A', 'C', 'H')
group by ProductID
having sum(Quantity) > 500
order by ProductID desc
	

/*2.Wykorzystuj�c tabel� person.person oraz person.personphone wy�wietl BusinessEntityID, 
FirstName, LastName, PhoneNumber. Wy�wietl tylko osoby, kt�rych nazwisko zaczyna 
si� od litery K. Posortuj ca�o�� rosn�co wg imienia oraz nazwsika. 
Zwr�� uwag� na to, �e musisz wykona� po��czenie pomi�dzy tabelami. */

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

/*3.Wykorzystuj�c tabele Person.BusinessEntityAddress oraz Person.Address policz, ilu pracownik�w 
zamieszkuje ka�de z miast. Wylistuj miasta i liczb� praconiwk�w. Ca�o�� posostruj rosn�co */

select *
from Person.BusinessEntityAddress
select*
from Person.Address

select  PA.city as Miasto, count(PBEA.AddressID) as Liczba_pracownik�w
from Person.BusinessEntityAddress as PBEA
JOIN
Person.Address as PA
ON
PBEA.AddressID = PA.AddressID
group by Pa.City
order by City


/*4. Z tabeli Sales.SalesOrderDetail wygeneruj list� sum� warto�ci zam�wie�. Podpowied�: warto�� 
zam�wienia to iloraz liczby sztuk oraz kosztu. Ca�o�� zgrupuj wg. ID zam�wienia, oraz posortuj 
wg. Tej samej warto�ci malej�co. */

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