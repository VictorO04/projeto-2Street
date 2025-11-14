CREATE TABLE clientes (
	cpf CHAR(14) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	telefone CHAR(13) NOT NULL UNIQUE,
	cep CHAR(9)
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
	id_produto INT NOT NULL,
	quantidade INT NOT NULL,
	data_venda DATE DEFAULT CURRENT_DATE,

	CONSTRAINT fk_vendas_clientes
	FOREIGN KEY (cpf_cliente) REFERENCES clientes(cpf),

	CONSTRAINT fk_vendas_produtos
	FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);