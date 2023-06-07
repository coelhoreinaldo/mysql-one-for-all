SELECT artista.nome AS artista, album.nome AS album, COUNT(ps.pessoa_usuaria_id) AS pessoas_seguidoras
FROM SpotifyClone.artista AS artista
LEFT JOIN SpotifyClone.album AS album ON album.artista_id = artista.artista_id
INNER JOIN SpotifyClone.seguidores_dos_artistas AS ps ON ps.artista_id = artista.artista_id
GROUP BY artista, album ORDER BY pessoas_seguidoras DESC, artista, album;