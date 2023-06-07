SELECT art.nome AS artista,
 CASE
	WHEN COUNT(cf.cancao_id) > 4 THEN 'A'
    WHEN COUNT(cf.cancao_id) IN (3, 4) THEN 'B'
    WHEN COUNT(cf.cancao_id) IN (1, 2) THEN 'C'
    ELSE '-'
    END as ranking
FROM SpotifyClone.artista AS art
LEFT JOIN SpotifyClone.album AS a ON a.artista_id = art.artista_id
LEFT JOIN SpotifyClone.cancao AS c ON c.album_id = a.album_id
LEFT JOIN SpotifyClone.cancao_favorita AS cf ON cf.cancao_id = c.cancao_id
GROUP BY art.nome
ORDER BY COUNT(cf.cancao_id) DESC, artista;