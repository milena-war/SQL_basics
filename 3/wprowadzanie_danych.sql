select *
from HumanResources.Krewni

--wprowadzanie danych
INSERT INTO HumanResources.Krewni
VALUES
(1, 'Milena', 'Warpas', 29, '19940719', 'corka'),
(2, 'Marcin', 'Warpas', 31, '19930517', 'brat');

INSERT INTO HumanResources.Krewni (imie, nazwisko, FamID, wiek)
VALUES('Katarzyna', 'Kulik', 2, 32)

 --aktualizacja kolumny
ALTER TABLE HumanResources.Krewni
alter column FamID int not null

-- ustawienie klucza g³ownego na konkretnej kolumnie
ALTER TABLE HumanResources.Krewni 
add constraint klucz_nowa_tabela PRIMARY KEY(FamID)


ALTER TABLE HumanResources.Krewni 
add unique(FamID)

INSERT INTO HumanResources.Krewni (imie, nazwisko, FamID, wiek)
VALUES('Katarzyna', 'Kulik', 3, 32)

-- utworzenie nowej tabeli z uwzglednieniem danych dotyczacych klucza g³ownego
CREATE TABLE HumanResources.Rodziny
(id int not null identity(1, 1) constraint klucz_rodzina PRIMARY KEY,-- krok o 1
imie varchar(50),
nazwisko varchar(50),
wiek int)

select * 
from HumanResources.Rodziny


--dodanie nowej kolumny
alter table HumanResources.Rodziny
add status varchar(30) default 'do sprawdzenia'


--dodanie wartoœci
INSERT INTO HumanResources.Rodziny (imie, nazwisko, wiek)
VALUES('Katarzyna', 'Kulik', 32)

INSERT INTO HumanResources.Rodziny (imie, nazwisko, wiek, status)
VALUES('Katarzyna', 'Kulik', 32, 'ok')

-- nadpisanie wartoœci w tabeli

UPDATE HumanResources.Rodziny
set nazwisko = 'Kiluk', wiek = 21
where id = 2


UPDATE HumanResources.Rodziny
set status = 'ok'
where id = 3

-- usuwanie rekordow
DELETE FROM HumanResources.Rodziny
WHERE id = 2 and imie = 'Katarzyna';

DELETE FROM HumanResources.Rodziny
WHERE imie = (select imie 
			from HumanResources.Rodziny
			where id =4)