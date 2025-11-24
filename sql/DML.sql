INSERT INTO cep (cep, endereco, bairro, cidade, estado) VALUES
('01001-000', 'Praça da Sé', 'Sé', 'São Paulo', 'SP'),
('20040-020', 'Rua da Quitanda', 'Centro', 'Rio de Janeiro', 'RJ'),
('30130-000', 'Av. Afonso Pena', 'Centro', 'Belo Horizonte', 'MG'),
('80010-000', 'Rua XV de Novembro', 'Centro', 'Curitiba', 'PR'),
('70040-010', 'Esplanada dos Ministérios', 'Zona Cívico-Administrativa', 'Brasília', 'DF');

INSERT INTO clientes (cpf, nome, email, telefone, cep) VALUES
('123.456.789-00', 'João Silva', 'joao@gmail.com', '1199999-0000', '01001-000'),
('987.654.321-00', 'Maria Oliveira', 'maria@gmail.com', '2198888-0000', '20040-020'),
('111.222.333-44', 'Carlos Souza', 'carlos@gmail.com', '3197777-0000', '30130-000'),
('555.666.777-88', 'Ana Pereira', 'ana@gmail.com', '4196666-0000', '80010-000'),
('000.111.222-33', 'Beatriz Lima', 'beatriz@gmail.com', '6195555-0000', '70040-010');

INSERT INTO categorias (categoria) VALUES
('Eletrônicos'),
('Informática'),
('Eletrodomésticos'),
('Móveis'),
('Telefonia');

INSERT INTO fornecedores (fornecedor) VALUES
('TechDistribuidora'),
('Mundo Eletrônico'),
('Casa Forte Importados'),
('MegaSuprimentos'),
('Prime Fornecimentos');

INSERT INTO produtos (produto_url, nome_produto, id_categoria, marca, preco, estoque, id_fornecedor)
VALUES
('url_produto1.jpg', 'Smartphone X100', 5, 'TechOne', 1999.90, 50, 1),
('url_produto2.jpg', 'Notebook Ultra 15', 2, 'CompTech', 3499.00, 30, 2),
('url_produto3.jpg', 'TV 50" 4K', 1, 'VisionMax', 2599.99, 20, 3),
('url_produto4.jpg', 'Geladeira FrostFree', 3, 'CoolHouse', 3999.50, 15, 4),
('url_produto5.jpg', 'Cadeira Gamer Pro', 4, 'ComfortSeat', 899.90, 40, 5);

INSERT INTO vendas (cpf_cliente, valor_total, forma_pagamento, data_venda) VALUES
('123.456.789-00', 1999.90, 'Crédito', '2025-01-10'),
('987.654.321-00', 3499.00, 'Pix', '2025-01-12'),
('111.222.333-44', 2599.99, 'Débito', '2025-01-15'),
('555.666.777-88', 3999.50, 'Crédito', '2025-01-18'),
('000.111.222-33', 899.90, 'Pix', '2025-01-20');

INSERT INTO itens_venda (id_produto, quantidade, id_venda) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5);