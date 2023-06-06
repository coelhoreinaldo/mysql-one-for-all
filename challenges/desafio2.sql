SELECT COUNT(DISTINCT cancoes.cancao_id) AS cancoes, COUNT(DISTINCT artistas.artista_id) AS artistas, COUNT(DISTINCT albuns.album_id) AS albuns 
FROM SpotifyClone.cancao AS cancoes
INNER JOIN SpotifyClone.album AS albuns
INNER JOIN SpotifyClone.artista AS artistas;
