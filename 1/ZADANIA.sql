-- Z bazy danych AdventureWorsk2014 wybierz 
--tabelê HumanResources.Employee i wyœwietl j¹ w 
--ca³oœci (zawieraj¹c¹ wszystkie kolumny). Tabelê 
--posortuj rosn¹co wg. Kolumny JobTitle. 
select *
from HumanResources.Employee
order by JobTitle 


--2. Z bazy danych AdventureWorsk2014 wybierz tabelê Person.Person i poka¿ wszystkie 
--BusinessEntityID oraz LastName. Nadaj alias pierwszej kolumnie id_pracownika a ca³oœæ 
--zapytania przesortuj wg. Drugiej kolumny rosn¹co.

select BusinessEntityID id_pracownika, LastName
from Person.Person
order by LastName 


--3. Z bazy danych AdventureWorsk2014 wybierz tabelê Person.Person i poka¿ wszystkie 
--BusinessEntityID oraz LastName, dodaj warunek mówi¹cy, ¿e kolumna Title nie mo¿e zawieraæ 
--wartoœci null. Nadaj alias pierwszej kolumnie 
--id_pracownika a ca³oœæ zapytania przesortuj wg. Drugiej kolumny rosn¹co. 

select BusinessEntityID id_pracownika, LastName
from Person.Person
Where Title is not null
order by LastName 

--4. Z tabeli sales.salesorderheader wyci¹gnij listê unikatowych wartoœci cutomerid oraz oblicz 
--wartoœæ frachtu dla ka¿dego klienta (zagregowanej kolumnie nadaj alias). Wyniki posortuj rosn¹co wg. Kolumny customerid. 

select  Distinct CustomerID, sum(freight) as suma_frachtu
from Sales.SalesOrderHeader
group by CustomerID
order by CustomerID

--5. Z tabeli sales.salesorderheader wyci¹gnij listê zawieraj¹c¹: Customer ID, SalespersonID oraz 
--sumê i œredni¹ z kolumny Subtotal dla ka¿dej kombinacji klienta i sprzedawcy. Ca³oœæ posortuj rosn¹co wg. Customerid.

select CustomerID, SalesPersonID
from Sales.SalesOrderHeader
group by CustomerID, SalesPersonID
order by CustomerID

select CustomerID, SalesPersonID, sum(SubTotal) as suma, avg(SubTotal) as srednia
from Sales.SalesOrderHeader
group by CustomerID, SalesPersonID
order by CustomerID desc