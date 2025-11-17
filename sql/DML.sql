INSERT INTO clientes (cpf, nome, email, telefone, cep) VALUES
('123.456.789-01', 'Lucas Santana', 'lucas.santana@email.com', '11999998881', '01001-000'),
('234.567.890-12', 'Bruna Almeida', 'bruna.almeida@email.com', '11988887772', '01002-000'),
('345.678.901-23', 'Caio Silva', 'caio.silva@email.com', '11977776663', '01003-000'),
('456.789.012-34', 'Fernanda Costa', 'fernanda.costa@email.com', '11966665554', '01004-000'),
('567.890.123-45', 'Diego Souza', 'diego.souza@email.com', '11955554445', '01005-000');





INSERT INTO cep (cep, endereco, bairro, cidade, estado) VALUES
('01001-000', 'Av. Paulista, 1000', 'Bela Vista', 'São Paulo', 'SP'),
('01002-000', 'R. Augusta, 500', 'Consolação', 'São Paulo', 'SP'),
('01003-000', 'R. da Liberdade, 300', 'Liberdade', 'São Paulo', 'SP'),
('01004-000', 'R. XV de Novembro, 200', 'Centro', 'São Paulo', 'SP'),
('01005-000', 'R. Oscar Freire, 250', 'Jardins', 'São Paulo', 'SP');

---------------------------------------------------------------------------------------------
INSERT INTO categorias (categoria) VALUES
('Camisetas'),
('Calças'),
('Moletons'),
('Tênis'),
('Bonés');
------------------------------------------------------------------------------------------------

INSERT INTO produtos (nome_produto, id_categoria, marca, preco, estoque, id_fornecedor) VALUES
('Camiseta Oversized Street', 1, 'UrbanWear', 99.90, 50, 1),
('Camiseta Tie-Dye', 1, 'StreetLife', 89.90, 40, 1),
('Calça Cargo', 2, 'UrbanWear', 159.90, 30, 2),
('Calça Jogger Preta', 2, 'StreetLife', 139.90, 25, 2),
('Moletom Hoodie Grafite', 3, 'GraffitiStyle', 199.90, 20, 3),
('Moletom College', 3, 'UrbanCrew', 179.90, 15, 3),
('Tênis Chunky Branco', 4, 'StepStreet', 299.90, 35, 4),
('Tênis High Top Preto', 4, 'StepStreet', 279.90, 40, 4),
('Boné Aba Reta Preto', 5, 'CapCity', 49.90, 60, 5),
('Boné Dad Hat Bege', 5, 'CapCity', 59.90, 50, 5);

INSERT INTO fornecedores (fornecedor) VALUES
('UrbanWear'),
('StreetLife'),
('GraffitiStyle'),
('StepStreet'),
('CapCity');

-------------------------------------------------------------------------------------------------
INSERT INTO vendas (cpf_cliente, valor_total, forma_pagamento, data_venda) VALUES
('123.456.789-01', 189.80, 'Cartão', '2025-11-15');
-------------------------------------------------------------------------------------------------
INSERT INTO itens_venda (id_produto, quantidade, id_venda) VALUES
(1, 1, 1),
(3, 1, 1); 
-------------------------------------------------------------------------------------------------
INSERT INTO vendas (cpf_cliente, valor_total, forma_pagamento, data_venda) VALUES
('234.567.890-12', 379.80, 'Pix', '2025-11-16');
-------------------------------------------------------------------------------------------------
INSERT INTO itens_venda (id_produto, quantidade, id_venda) VALUES
(5, 1, 2),
(7, 1, 2);

INSERT INTO vendas (cpf_cliente, valor_total, forma_pagamento, data_venda) VALUES
('345.678.901-23', 239.80, 'Dinheiro', '2025-11-17');
--------------------------------------------------------------------------------------------------
INSERT INTO itens_venda (id_produto, quantidade, id_venda) VALUES
(2, 1, 3),
(8, 1, 3);
--------------------------------------------------------------------------------------------------
INSERT INTO vendas (cpf_cliente, valor_total, forma_pagamento, data_venda) VALUES
('456.789.012-34', 239.80, 'Cartão', '2025-11-17');
--------------------------------------------------------------------------------------------------
INSERT INTO itens_venda (id_produto, quantidade, id_venda) VALUES
(4, 1, 4),
(6, 1, 4);
--------------------------------------------------------------------------------------------------
INSERT INTO vendas (cpf_cliente, valor_total, forma_pagamento, data_venda) VALUES
('567.890.123-45', 109.80, 'Cartão', '2025-11-17');
------------------------------------------------------------------------------------------------
INSERT INTO itens_venda (id_produto, quantidade, id_venda) VALUES
(9, 1, 5),
(10, 1, 5);