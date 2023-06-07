SELECT p.nome AS pessoa_usuaria, COUNT(h.cancao_id) AS musicas_ouvidas, ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.pessoa_usuaria AS p
INNER JOIN SpotifyClone.historico_de_reproducoes AS h ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
INNER JOIN SpotifyClone.cancao AS c ON h.cancao_id = c.cancao_id
GROUP BY pessoa_usuaria 
ORDER BY pessoa_usuaria;