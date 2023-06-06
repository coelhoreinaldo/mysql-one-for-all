SELECT p.nome AS pessoa_usuaria, IF(MAX(YEAR(h.data_reproducao)) < 2021, 'Inativa', 'Ativa') AS status_pessoa_usuaria 
FROM SpotifyClone.pessoa_usuaria AS p
INNER JOIN SpotifyClone.historico_de_reproducoes AS h ON h.pessoa_usuaria_id = p.pessoa_usuaria_id
GROUP BY p.nome ORDER BY p.nome;