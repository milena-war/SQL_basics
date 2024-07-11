--funkcje rankingu pozwalaj¹ na okreœlenie jakie wartoœci w kolumnie
--wypadaj na tle na innych zwracaja ich pozycje na których pola kolumny siê plasuj¹
--ustawiaja je od najmniejszego do najwiekszego
-- liczby, daty, teksty
--funkcja nie przyjmuja argumentów

-- FUNKCJA RANK - zwraca pozycje porz¹dkow¹ w zbiorze wartoœci i uwzglêdnia pozycjê egzekwo

select BusinessEntityID, JobTitle, VacationHours,
-- RANK() over - zrob ranking na czyms
RANK() over (order by VacationHours desc) as "Ranking L4"
from HumanResources.Employee


-- dense_rank() zwaraca pozycje poczatkowa i uwzglednia pozycje egzekwo

select BusinessEntityID, JobTitle, SickLeaveHours,
DENSE_RANK() over(order by SickLeaveHours desc) as "Ranking L4 z duplikatami"
from HumanResources.Employee

--ROW_NUMBER() numer wiersza - zwaraca pozycjê pocz¹tkow¹ w zbiorze, nie uwzglêdnia miejsc egzekwo
select BusinessEntityID, JobTitle, SickLeaveHours,
ROW_NUMBER() over (order by SickLeaveHours desc) as "Row number wynik"
from HumanResources.Employee

--NTILE(arg-wartoœc liczbowa)dzieli zbior, zlicza wszytskie wiersze nastepnie dzieli je proporcjonalnie na czesci(arg)
--analiza ABC
select BusinessEntityID, JobTitle, SickLeaveHours,
NTILE(6) over (order by SickLeaveHours desc) as "NTITLE wynik"
from HumanResources.Employee


select BusinessEntityID, HireDate,
DENSE_RANK() over (order by HireDate desc) "Najkrócej pracuj¹cy"
from HumanResources.Employee

select BusinessEntityID, HireDate,
DENSE_RANK() over (order by HireDate) "Najd³u¿ej pracuj¹cy"
from HumanResources.Employee

select BusinessEntityID, JobTitle,
DENSE_RANK() over (order by  JobTitle) as "Pozycja wg funkcji w firmie"
from HumanResources.Employee
