USE `dataviz_bytelabss`;

CREATE TABLE `usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `encrypted_password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `autorizacoes` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `usuarios_autorizacoes` (
  `usuario_id` BIGINT NOT NULL,
  `autorizacao_id` BIGINT NOT NULL,
  PRIMARY KEY (`usuario_id`, `autorizacao_id`),
  CONSTRAINT `fk_usuarios_autorizacoes_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_usuarios_autorizacoes_autorizacao` FOREIGN KEY (`autorizacao_id`) REFERENCES `autorizacoes` (`id`) ON DELETE CASCADE
);
