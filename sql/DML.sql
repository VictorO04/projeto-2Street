INSERT INTO categorias (categoria) VALUES
('Tênis'),
('Camisetas'),
('Calças'),
('Acessórios'),
('Agasalhos');

INSERT INTO fornecedores (fornecedor) VALUES
('Urban Wear Fabricação'),
('Sneaker Zone Distribuição'),
('Acessórios Top Hits'),
('Hoodie Supply Co.'),
('Jeans Premium Brasil');

INSERT INTO cep (cep, endereco, bairro, cidade, estado) VALUES
('01000-001', 'Rua das Lojas, 123', 'Centro', 'São Paulo', 'SP'),
('20000-002', 'Av. Skatepark, 456', 'Vila Madalena', 'Rio de Janeiro', 'RJ'),
('30000-003', 'Rua dos Graffitis', 'Savassi', 'Belo Horizonte', 'MG'),
('40000-004', 'Largo da Cultura', 'Pituba', 'Salvador', 'BA'),
('90000-005', 'Rua do Hip Hop', 'Moinhos de Vento', 'Porto Alegre', 'RS');

INSERT INTO clientes (cpf, nome, email, telefone, cep) VALUES
('111.111.111-11', 'Léo Style', 'leo.style@urbano.com', '11988887777', '01000-001'),
('222.222.222-22', 'Bia Sneaker', 'bia.snkr@urbano.com', '21977776666', '20000-002'),
('333.333.333-33', 'Carlos Cap', 'carlos.cap@urbano.com', '31966665555', '30000-003'),
('444.444.444-44', 'Duda Fit', 'duda.fit@urbano.com', '71955554444', '40000-004'),
('555.555.555-55', 'Erick Street', 'erick.st@urbano.com', '51944443333', '90000-005');

INSERT INTO produtos (produto_url, nome_produto, id_categoria, marca, cor, preco, estoque, id_fornecedor) VALUES
('http://url.com/jordan', 'Sneaker High Top Black', 1, 'KicksPro', 'Preto', 799.90, 50, 2),
('http://url.com/camiseta', 'T-Shirt Oversized Gráfico', 2, 'StreetCore', 'Branco', 119.90, 150, 1),
('http://url.com/jogger', 'Calça Moletom Jogger', 3, 'UrbanFit', 'Cinza', 249.00, 75, 5),
('http://url.com/bone', 'Boné Aba Reta Logo', 4, 'Cap King', 'Vermelho', 69.90, 120, 3),
('http://url.com/moletom', 'Moletom Canguru Premium', 5, 'ChillStyle', 'Verde', 349.00, 40, 4);

INSERT INTO vendas (cpf_cliente, valor_total, forma_pagamento, status_pedido, data_venda) VALUES
('111.111.111-11', 799.90, 'Cartão', 'Entregue', '2025-11-20'),
('222.222.222-22', 239.80, 'PIX', 'Enviado', '2025-11-21'),
('333.333.333-33', 249.00, 'Boleto', 'Processando', '2025-11-22'),
('444.444.444-44', 69.90, 'Cartão', 'Entregue', '2025-11-23'),
('111.111.111-11', 349.00, 'PIX', 'Pendente', '2025-11-24');

INSERT INTO itens_venda (id_produto, quantidade, id_venda) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5);