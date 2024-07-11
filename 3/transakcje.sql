-- TRANSAKCJE - to zesp� operacji na bazie danych, kt�re przeprowadzaj� baze do z jednego stanu spojnego do innego

-- integruje kilka operacji w ca�o��
--umo�liwiaja cofni�cie transakcji

CREATE TABLE Sales.Przyjecia
(id int,
product varchar(50),
price int)

select *
from Sales.Przyjecia

CREATE TABLE Sales.Wydania
(id int,
product varchar(50),
price int)

select *
from Sales.Wydania

insert into Sales.Przyjecia (id, product, price)
values (1, 'cookie', 2);

--rozpocz�cie transakcji
begin tran


insert into Sales.Przyjecia (id, product, price)
values (2, 'cookie', 1);

update Sales.Przyjecia
set product = 'roll'
where id = 1;

-- wycofanie transakcji
rollback tran;