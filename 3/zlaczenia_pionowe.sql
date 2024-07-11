-- Z��CZENIA PIONOWE

-- klauzula order by moze pojawic sie tylko na ko�cu ca�ego skryptu i po rozpoznaniu nag�owk�w z 1 zapytania

select *
from Sales.Przyjecia

select *
from Sales.Wydania

insert into Sales.Wydania
values (1, 'cookie', 5),
		(2, 'Piernik', 2)

UPDATE Sales.Wydania
set price = 2
where id = 1

-- UNION - suma zbior�w, elementy znajduj�ce si� zar�wno w zbiorze pierwszym jak i drugim
-- domy�lnie jest to UNION DISTINCT czyli usuwa duplikaty

select id, product, price
from Sales.Przyjecia
UNION 
select id, product, price
from Sales.Wydania

--INTERSECT - wyznaczenia cz�ci wsp�lnej zbior�w

select id, product, price
from Sales.Przyjecia
INTERSECT
select id, product, price
from Sales.Wydania

-- except (odejmowanie) ze zbioru pierwszego (czyli po lewej stronie od operatora EXCEPT),
--odejmowane s� wszystkie elementy wsp�lne ze zbiorem drugim (tabeli wynikowej, kwerendy po prawej stronie)

--1
select id, product, price
from Sales.Przyjecia
except
select id, product, price
from Sales.Wydania

--2
select id, product, price
from Sales.Wydania
except
select id, product, price
from Sales.Przyjecia