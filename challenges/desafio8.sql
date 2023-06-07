SELECT artista.nome AS artista, album.nome AS album
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album ON artista.artista_id = album.artista_id
WHERE artista.nome = 'Elis Regina'
ORDER BY album;
