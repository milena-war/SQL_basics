--FUNKCJE TEKSTOWE

--wyci�ganie tekstu
select right('Lubie SQL',1) as "Prawy 1";

select left('Lubie SQL', 1) as "Lewy 1";

-- LOWER UPPER zamiana na ma�e i duze litery
select lower('Lubie SQL') as "Ma�e litery"
select upper('Lubie SQL') as "Ma�e litery"

--SUBSTRING (tekst, pozycja na kt�rej ma zwraca�, ilo�c znak�w do zwr�cenia)
select substring('Lubie SQL', 7, 3) as "Fragment tekstu"

-- LEN d�ugo�� ci�gu tekstowego
select len('Lubie SQL') as "D�ugo�� tekstu"

-- CHARINDEX (szukana pozycja, gdzie szukamy, od kt�rej pozycji(opcjonalnie))
select CHARINDEX('ql', 'Lubie SQL',1) as "Pozycja znaku w tek�cie"

-- REVERSE odwr�cenie tekstu
select REVERSE('Lubie SQL') as "Odwrocony tekst"

--REPLACE (gdzie chcemy zmienic, co chcemy zamienic, na co chcemy zamienic)
select REPLACE('Lubie SQL', 'SQL', 'Pythona') as "Zmieniony tekst"

--REPLICATE replikuje dany ci�g znak�w
select REPLICATE('Lubi� SQL ', 3) as Zwielokrotnienie

-- LTRIM usuni�cie zb�dnych odst�p�w
select LTRIM('  Lubi� SQL  a ') as "Usuni�cie zb�dnych odst�p�w"

--STUFF 
select STUFF('Lubi� SQL', 7, 3, 'Pythona') as "Podmiana ci�gu znak�w"
select STUFF('Lubi� SQL', 1, 3, 'Pythona') as "Podmiana ci�gu znak�w"