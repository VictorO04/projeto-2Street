CREATE VIEW vw_Inventario_Completo AS
SELECT
    p.nome_produto,
    p.cor,
    p.preco,
    p.estoque AS quantidade_estoque,
    c.categoria AS nome_categoria
FROM 
    produtos p
    
INNER JOIN 
    categorias c ON p.id_categoria = c.id_categoria
    
ORDER BY 
    p.nome_produto;

CREATE VIEW Vw_Historico_De_Vendas AS
SELECT
    v.data_venda,

    cli.nome AS nome_cliente,

    p.nome_produto,
    NULL AS tamanho,
    p.cor,
    
    iv.quantidade,

    p.preco AS preco_unitario_na_venda

FROM 
    vendas v
    
INNER JOIN 
    clientes cli ON v.cpf_cliente = cli.cpf
    
INNER JOIN 
    itens_venda iv ON v.id_venda = iv.id_venda
    
INNER JOIN 
    produtos p ON iv.id_produto = p.id_produto

ORDER BY 
    v.data_venda DESC, 
    cli.nome, 
    p.nome_produto;