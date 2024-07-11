-- Z bazy danych AdventureWorsk2014 wybierz 
--tabel� HumanResources.Employee i wy�wietl j� w 
--ca�o�ci (zawieraj�c� wszystkie kolumny). Tabel� 
--posortuj rosn�co wg. Kolumny JobTitle. 
select *
from HumanResources.Employee
order by JobTitle 


--2. Z bazy danych AdventureWorsk2014 wybierz tabel� Person.Person i poka� wszystkie 
--BusinessEntityID oraz LastName. Nadaj alias pierwszej kolumnie id_pracownika a ca�o�� 
--zapytania przesortuj wg. Drugiej kolumny rosn�co.

select BusinessEntityID id_pracownika, LastName
from Person.Person
order by LastName 


--3. Z bazy danych AdventureWorsk2014 wybierz tabel� Person.Person i poka� wszystkie 
--BusinessEntityID oraz LastName, dodaj warunek m�wi�cy, �e kolumna Title nie mo�e zawiera� 
--warto�ci null. Nadaj alias pierwszej kolumnie 
--id_pracownika a ca�o�� zapytania przesortuj wg. Drugiej kolumny rosn�co. 

select BusinessEntityID id_pracownika, LastName
from Person.Person
Where Title is not null
order by LastName 

--4. Z tabeli sales.salesorderheader wyci�gnij list� unikatowych warto�ci cutomerid oraz oblicz 
--warto�� frachtu dla ka�dego klienta (zagregowanej kolumnie nadaj alias). Wyniki posortuj rosn�co wg. Kolumny customerid. 

select  Distinct CustomerID, sum(freight) as suma_frachtu
from Sales.SalesOrderHeader
group by CustomerID
order by CustomerID

--5. Z tabeli sales.salesorderheader wyci�gnij list� zawieraj�c�: Customer ID, SalespersonID oraz 
--sum� i �redni� z kolumny Subtotal dla ka�dej kombinacji klienta i sprzedawcy. Ca�o�� posortuj rosn�co wg. Customerid.

select CustomerID, SalesPersonID
from Sales.SalesOrderHeader
group by CustomerID, SalesPersonID
order by CustomerID

select CustomerID, SalesPersonID, sum(SubTotal) as suma, avg(SubTotal) as srednia
from Sales.SalesOrderHeader
group by CustomerID, SalesPersonID
order by CustomerID desc