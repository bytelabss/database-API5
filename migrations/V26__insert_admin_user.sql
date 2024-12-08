INSERT INTO 
    `usuarios` (`id`, `name`, `encrypted_password`) 
VALUES 
    (1, 'admin', '$2a$12$zXM1Fo1d24cXFiZ8.TVx3uViSd3svxeMGTwCBZAuBY7ZUZCkQqtEm');

INSERT INTO 
    `autorizacoes` (`id`, `name`) 
VALUES 
    (1, 'ADMINISTRADOR');

INSERT INTO 
    `usuarios_autorizacoes` (`usuario_id`, `autorizacao_id`) 
VALUES 
    (1, 1);
