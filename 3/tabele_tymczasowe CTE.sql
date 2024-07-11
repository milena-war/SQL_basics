--zapytanie SQL korzysta z wyra�enia wsp�lnego CTE (Common Table Expression) o nazwie `Dane_Pracownik�w`

-- CTE
with Dane_Pracownik�w as (
select PP.FirstName + ' ' + PP.LastName as Nowa_Nazwa, EMP.BirthDate
from HumanResources.Employee EMP
inner join Person.Person PP
on EMP.BusinessEntityID = PP.BusinessEntityID )

-- zapytanie g��wne
select * 
from Dane_Pracownik�w
where BirthDate < '19900101'
order by BirthDate 

--Rozbicie zapytania:


--1. **Definicja CTE `Dane_Pracownik�w`**: Tworzymy CTE, kt�ry zbiera dane pracownik�w z tabel 
--`HumanResources.Employee` i `Person.Person`.
--2. **Selekcja danych**:
--    - `PP.FirstName + ' ' + PP.LastName as Nowa_Nazwa`: ��czenie imienia i nazwiska z tabeli `Person.Person` 
--	w jedn� kolumn� `Nowa_Nazwa`.
--    - `EMP.BirthDate`: Pobieranie daty urodzenia z tabeli `HumanResources.Employee`.
--3. **Po��czenie tabel**:
--    - `inner join Person.Person PP on EMP.BusinessEntityID = PP.BusinessEntityID`: 
--	��czenie tabel `Employee` i `Person` na podstawie wsp�lnego `BusinessEntityID`.

--1. **Selekcja z CTE**: Pobieranie wszystkich kolumn z wcze�niej zdefiniowanego CTE `Dane_Pracownik�w`.
--2. **Warunek filtrowania**: `where BirthDate < '19900101'`: Filtracja wynik�w, aby wybra� tylko te rekordy, gdzie `BirthDate` (data urodzenia) jest wcze�niejsza ni� 1 stycznia 1990 roku.
--3. **Sortowanie wynik�w**: `order by BirthDate`: Sortowanie wynik�w wed�ug daty urodzenia w porz�dku rosn�cym.