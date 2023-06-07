DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE pessoa_usuaria 
(
    id	INT PRIMARY KEY AUTO_INCREMENT,
    nome	VARCHAR(50) NOT NULL
);

INSERT INTO pessoa_usuaria (id, nome) VALUES
    (1, 'Barbara Liskov'),
    (2, 'Robert Cecil Martin'),
    (3, 'Ada Lovelace'),
    (4, 'Martin Fowler'),
    (5, 'Sandi Metz'),
    (6, 'Christopher Alexander'),
    (7, 'Judith Butler'),
    (8, 'Jorge Amado'); 
    
CREATE TABLE cancao 
(
    id	INT PRIMARY KEY AUTO_INCREMENT,
    nome	VARCHAR(100) NOT NULL
);

INSERT INTO cancao (id, nome) VALUES
    (1, 'Alien Superstar'),
    (2, 'Como Nossos Pais'),
    (3, 'Feeling Good'),
    (4, 'Don''t Stop Me Now'),
    (5, 'Break My Soul'),
    (6, 'O Medo de Amar é o Medo de Ser Livre'),
    (7, 'Virgo''s Groove');

CREATE TABLE cancao_favorita 
(
    pessoa_usuaria_id INT NOT NULL,
    cancao_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (pessoa_usuaria_id, cancao_id),
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.pessoa_usuaria(id),
    FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancao(id)
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

SELECT * FROM pessoa_usuaria;