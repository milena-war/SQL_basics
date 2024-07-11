--FUNKCJE TEKSTOWE

--wyci¹ganie tekstu
select right('Lubie SQL',1) as "Prawy 1";

select left('Lubie SQL', 1) as "Lewy 1";

-- LOWER UPPER zamiana na ma³e i duze litery
select lower('Lubie SQL') as "Ma³e litery"
select upper('Lubie SQL') as "Ma³e litery"

--SUBSTRING (tekst, pozycja na której ma zwracaæ, iloœc znaków do zwrócenia)
select substring('Lubie SQL', 7, 3) as "Fragment tekstu"

-- LEN d³ugoœæ ci¹gu tekstowego
select len('Lubie SQL') as "D³ugoœæ tekstu"

-- CHARINDEX (szukana pozycja, gdzie szukamy, od której pozycji(opcjonalnie))
select CHARINDEX('ql', 'Lubie SQL',1) as "Pozycja znaku w tekœcie"

-- REVERSE odwrócenie tekstu
select REVERSE('Lubie SQL') as "Odwrocony tekst"

--REPLACE (gdzie chcemy zmienic, co chcemy zamienic, na co chcemy zamienic)
select REPLACE('Lubie SQL', 'SQL', 'Pythona') as "Zmieniony tekst"

--REPLICATE replikuje dany ci¹g znaków
select REPLICATE('Lubiê SQL ', 3) as Zwielokrotnienie

-- LTRIM usuniêcie zbêdnych odstêpów
select LTRIM('  Lubiê SQL  a ') as "Usuniêcie zbêdnych odstêpów"

--STUFF 
select STUFF('Lubiê SQL', 7, 3, 'Pythona') as "Podmiana ci¹gu znaków"
select STUFF('Lubiê SQL', 1, 3, 'Pythona') as "Podmiana ci¹gu znaków"