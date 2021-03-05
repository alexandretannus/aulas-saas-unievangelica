SET foreign_key_checks = 0;

DELETE FROM clube;
DELETE FROM jogador;
DELETE FROM usuario;
DELETE FROM permissao;
DELETE FROM usuario_permissao;

SET foreign_key_checks = 1;

ALTER TABLE clube auto_increment = 1;
ALTER TABLE jogador auto_increment = 1;
ALTER TABLE usuario auto_increment = 1;
ALTER TABLE permissao auto_increment = 1;
ALTER TABLE usuario_permissao auto_increment = 1;

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

INSERT INTO usuario (id, nome, email, senha) values (1, 'Administrador', 'admin@teste.com', '$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.');
INSERT INTO usuario (id, nome, email, senha) values (2, 'Usuario', 'usuario@teste.com', '$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.');
INSERT INTO usuario (id, nome, email, senha) values (3, 'Clube', 'clube@teste.com', '$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.');

INSERT INTO permissao (id, descricao) values (1, 'CADASTRAR_JOGADOR');
INSERT INTO permissao (id, descricao) values (2, 'PESQUISAR_JOGADOR');
INSERT INTO permissao (id, descricao) values (3, 'CADASTRAR_CLUBE');
INSERT INTO permissao (id, descricao) values (4, 'PESQUISAR_CLUBE');
INSERT INTO permissao (id, descricao) values (5, 'CADASTRAR_USUARIO');
INSERT INTO permissao (id, descricao) values (6, 'PESQUISAR_USUARIO');

-- permissoes admin
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (1, 1);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (1, 2);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (1, 3);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (1, 4);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (1, 5);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (1, 6);

-- permissoes usuario
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (2, 2);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (2, 4);

-- permissoes clube
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (3, 1);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (3, 2);
INSERT INTO usuario_permissao (usuario_id, permissao_id) values (3, 4);