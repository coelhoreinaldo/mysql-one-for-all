CREATE TABLE cancao_favorita 
(
    pessoa_usuaria_id INT NOT NULL,
    cancao_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (pessoa_usuaria_id, cancao_id),
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.pessoa_usuaria(pessoa_usuaria_id),
    FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancao(cancao_id)
);

INSERT INTO cancao_favorita (pessoa_usuaria_id, cancao_id) VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (3, 5),
    (3, 1),
    (4, 6),
    (4, 4),
    (5, 3),
    (5, 7),
    (6, 4),
    (7, 6),
    (8, 1);