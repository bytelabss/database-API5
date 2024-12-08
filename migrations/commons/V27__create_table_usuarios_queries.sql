CREATE TABLE `usuarios_custom_query` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuario` bigint DEFAULT NULL,
  `custom_query` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario` (`usuario`),
  KEY `custom_query` (`custom_query`),
  CONSTRAINT `usuarios_custom_query_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `usuarios_custom_query_ibfk_2` FOREIGN KEY (`custom_query`) REFERENCES `custom_queries` (`id`)
);
