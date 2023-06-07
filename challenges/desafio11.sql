SELECT a.nome AS album, COUNT(cf.cancao_id) AS favoritadas
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.cancao AS c ON c.album_id = a.album_id
INNER JOIN SpotifyClone.cancao_favorita AS cf ON cf.cancao_id = c.cancao_id
GROUP BY album
ORDER BY favoritadas DESC, a.nome LIMIT 3;
