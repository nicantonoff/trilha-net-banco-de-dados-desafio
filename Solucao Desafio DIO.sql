-- 1
SELECT Nome, Ano
FROM Filmes

-- 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

-- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano >= 2000

-- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT f.Nome, g.Genero
FROM FilmesGenero fg
JOIN Filmes f ON fg.IdFilme = f.Id
JOIN Generos g ON fg.IdGenero = g.Id

-- 11
SELECT f.Nome, g.Genero
FROM FilmesGenero fg
JOIN Filmes f ON fg.IdFilme = f.Id
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme ef
JOIN Filmes f ON ef.IdFilme = f.Id
JOIN Atores a ON ef.IdAtor = a.Id
