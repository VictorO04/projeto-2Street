SELECT
    C.nome AS Nome_Cliente,
    V.status_pedido AS Status_Pedido,
    P.nome_produto AS Produto,
    P.cor AS Cor,
    I.quantidade AS Quantidade_Comprada
FROM
    vendas AS V
INNER JOIN
    clientes AS C ON V.cpf_cliente = C.cpf
INNER JOIN
    itens_venda AS I ON V.id_venda = I.id_venda
INNER JOIN
    produtos AS P ON I.id_produto = P.id_produto
WHERE
    V.id_venda = [ID_DA_VENDA_DESEJADA];


SELECT
    P.nome_produto AS Produto,
    P.estoque AS Estoque_Atual,
    C.categoria AS Categoria
FROM
    produtos AS P
INNER JOIN
    categorias AS C ON P.id_categoria = C.id_categoria
WHERE
    C.categoria = '[NOME_DA_CATEGORIA_DESEJADA]'
    AND P.estoque < 10;


SELECT
    C.nome AS Nome_Cliente,
    V.data_venda AS Data_da_Compra
FROM
    clientes AS C
LEFT JOIN
    vendas AS V ON C.cpf = V.cpf_cliente;