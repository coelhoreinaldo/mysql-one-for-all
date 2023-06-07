SELECT c.nome AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC 
LIMIT 2;
