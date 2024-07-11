--zapytanie SQL korzysta z wyra¿enia wspólnego CTE (Common Table Expression) o nazwie `Dane_Pracowników`

-- CTE
with Dane_Pracowników as (
select PP.FirstName + ' ' + PP.LastName as Nowa_Nazwa, EMP.BirthDate
from HumanResources.Employee EMP
inner join Person.Person PP
on EMP.BusinessEntityID = PP.BusinessEntityID )

-- zapytanie g³ówne
select * 
from Dane_Pracowników
where BirthDate < '19900101'
order by BirthDate 

--Rozbicie zapytania:


--1. **Definicja CTE `Dane_Pracowników`**: Tworzymy CTE, który zbiera dane pracowników z tabel 
--`HumanResources.Employee` i `Person.Person`.
--2. **Selekcja danych**:
--    - `PP.FirstName + ' ' + PP.LastName as Nowa_Nazwa`: £¹czenie imienia i nazwiska z tabeli `Person.Person` 
--	w jedn¹ kolumnê `Nowa_Nazwa`.
--    - `EMP.BirthDate`: Pobieranie daty urodzenia z tabeli `HumanResources.Employee`.
--3. **Po³¹czenie tabel**:
--    - `inner join Person.Person PP on EMP.BusinessEntityID = PP.BusinessEntityID`: 
--	£¹czenie tabel `Employee` i `Person` na podstawie wspólnego `BusinessEntityID`.

--1. **Selekcja z CTE**: Pobieranie wszystkich kolumn z wczeœniej zdefiniowanego CTE `Dane_Pracowników`.
--2. **Warunek filtrowania**: `where BirthDate < '19900101'`: Filtracja wyników, aby wybraæ tylko te rekordy, gdzie `BirthDate` (data urodzenia) jest wczeœniejsza ni¿ 1 stycznia 1990 roku.
--3. **Sortowanie wyników**: `order by BirthDate`: Sortowanie wyników wed³ug daty urodzenia w porz¹dku rosn¹cym.