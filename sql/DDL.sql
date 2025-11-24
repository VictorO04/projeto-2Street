CREATE TABLE cep (
	cep CHAR(9) PRIMARY KEY,
	endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	estado CHAR(2) NOT NULL
);

CREATE TABLE clientes (
	cpf CHAR(14) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	telefone CHAR(13) NOT NULL UNIQUE,
	cep CHAR(9),

	CONSTRAINT fk_clientes_cep
	FOREIGN KEY (cep) REFERENCES cep(cep)
);

CREATE TABLE categorias (
	id_categoria SERIAL PRIMARY KEY,
	categoria VARCHAR(20) NOT NULL
);

CREATE TABLE fornecedores (
	id_fornecedor SERIAL PRIMARY KEY,
	fornecedor VARCHAR(255) NOT NULL
);

CREATE TABLE produtos (
	id_produto SERIAL PRIMARY KEY,
	produto_url TEXT NOT NULL,
	nome_produto VARCHAR(255) NOT NULL,
	id_categoria INT NOT NULL,
	marca VARCHAR(50) NOT NULL,
	preco DECIMAL(10,2) NOT NULL CHECK(preco >= 0),
	estoque INT NOT NULL CHECK(estoque >= 0),
	id_fornecedor INT not NULL,

	CONSTRAINT fk_produtos_categorias
	FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),

	CONSTRAINT fk_produtos_fornecedores
	FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor)
);

CREATE TABLE vendas (
	id_venda SERIAL PRIMARY KEY,
	cpf_cliente CHAR(14) NOT NULL,
	valor_total DECIMAL(10, 2) NOT NULL CHECK(valor_total >= 0),
	forma_pagamento VARCHAR(10) NOT NULL,
	data_venda DATE DEFAULT CURRENT_DATE,

	CONSTRAINT fk_vendas_clientes
	FOREIGN KEY (cpf_cliente) REFERENCES clientes(cpf)
);

CREATE TABLE itens_venda (
	id_item_venda SERIAL PRIMARY KEY,
	id_produto INT NOT NULL,
	quantidade INT NOT NULL CHECK (quantidade > 0),
	id_venda INT NOT NULL,

	CONSTRAINT fk_itens_venda_produtos
	FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),

	CONSTRAINT fk_itens_venda_vendas
	FOREIGN KEY (id_venda) REFERENCES vendas(id_venda)
);