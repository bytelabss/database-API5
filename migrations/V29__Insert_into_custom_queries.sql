INSERT INTO custom_queries (query, description, visualization_model)
VALUES
    ('{"from": "fatec.bytelabss.api.models.DimVaga", "limit": 10, "fields": ["numeroPosicoes", "tituloVaga"], "groupBy": null, "conditions": [{"field": "numeroPosicoes", "value": "0", "operator": ">"}], "orderByField": "tituloVaga", "orderByDirection": "ASC"}', 'Exemplo 1: posições por vaga', 'bar'),
    ('{"from": "fatec.bytelabss.api.models.FatoContratacoes", "limit": 10, "fields": ["tempoMedio", "idVaga"], "groupBy": null, "conditions": [{"field": "tempoMedio", "value": "0", "operator": ">"}], "orderByField": "idVaga", "orderByDirection": "ASC"}', 'Exemplo 2: tempo médio por vaga', 'column'),
    ('{"from": "fatec.bytelabss.api.models.FatoContratacoes", "limit": 10, "fields": ["quantidade", "idProcessoSeletivo"], "groupBy": null, "conditions": [{"field": "quantidade", "value": "0", "operator": ">"}], "orderByField": "idProcessoSeletivo", "orderByDirection": "ASC"}', 'Exemplo 3: quantidade de contratações por processo seletivo', 'column');
