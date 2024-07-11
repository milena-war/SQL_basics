-- MODYFIKOWANIE BAZ DANYCH

--CREATE TABLE tworzenie tabeli

create table HumanResources.Rodzina
(id int,
imie varchar(30), 
nazwisko varchar(30),
wiek int,
data_urodzenia date,
stopien_pokrewienstwa varchar(100))

select *
from HumanResources.Rodzina

--ALTER TABLE -wywo³anie tabeli

--ADD edytowanie tabeli w bazie danych

alter table HumanResources.Rodzina
add miejscowosc varchar(50)

-- DROP COLUMN usuniêcie kolumny
alter table HumanResources.Rodzina
drop column miejscowosc

-- SP_RENAME
-- zmiana nazwy tabeli
sp_rename 'HumanResources.Rodzina', 'Krewni';


-- zmiana nazwy kolumny
sp_rename 'HumanResources.Krewni.ID', 'FamID'

select *
from HumanResources.Krewni

-- ³adowanie danych do tabeli