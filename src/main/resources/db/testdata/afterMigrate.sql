SET foreign_key_checks = 0;

DELETE FROM clube;
DELETE FROM jogador;

SET foreign_key_checks = 1;

ALTER TABLE clube auto_increment = 1;
ALTER TABLE jogador auto_increment = 1;

INSERT INTO clube(nome) VALUES ("Goiás");
INSERT INTO clube(nome) VALUES ("Flamengo");
INSERT INTO clube(nome) VALUES ("Palmeiras");
INSERT INTO clube(nome) VALUES ("Internacional");
INSERT INTO clube(nome) VALUES ("Bahia");

INSERT INTO jogador(nome, clube_id) VALUES ("Tadeu", 1);
INSERT INTO jogador(nome, clube_id) VALUES ("Refael Moura", 1);
INSERT INTO jogador(nome, clube_id) VALUES ("Everton Ribeiro", 2);
INSERT INTO jogador(nome, clube_id) VALUES ("Rony", 3);
INSERT INTO jogador(nome, clube_id) VALUES ("Edenilson", 4);
