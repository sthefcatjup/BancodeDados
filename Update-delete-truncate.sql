SELECT * FROM Avaliação WHERE Ped_id = 1 ORDER BY Ava_comentario;

UPDATE Avaliação SET Ava_comentario = 'Opinião do cliente' WHERE ped_id = 1;

UPDATE Avaliação SET Ava_comentario = 'Opinião do cliente', Ava_nota = 5 WHERE ped_id = 2;

SET SQL_SAFE_UPDATES = OFF;

-- Atualizar imagem dos atacantes e meias do time 1
START TRANSACTION;
    UPDATE Avaliação SET Ava_comentario = 'Opinião do cliente' WHERE Ava_nota > 3 AND ped_id = 1;
    SELECT * FROM Avaliação WHERE ped_id = 1 ORDER BY Ava_comentario;
    SELECT * FROM Avaliação WHERE ped_id = 2 ORDER BY Ava_comentario;
    SELECT * FROM Avaliação WHERE ped_id = 3 ORDER BY Ava_comentario;
ROLLBACK;

START TRANSACTION;
    UPDATE Avaliação SET Ava_comentario = 'Opinião do cliente' WHERE ped_id = 1 AND Ava_nota > 3;
    SELECT * FROM Avaliação WHERE ped_id = 1 ORDER BY Ava_comentario;
    SELECT * FROM Avaliação WHERE ped_id = 2 ORDER BY Ava_comentario;
ROLLBACK;

START TRANSACTION;
    UPDATE Avaliação SET Ava_comentario = 'Opinião do cliente' WHERE ped_id = 1 AND Ava_nota > 3;
    SELECT * FROM Avaliação WHERE ped_id = 1 ORDER BY Ava_comentario;
    SELECT * FROM Avaliação WHERE ped_id = 2 ORDER BY Ava_comentario;
ROLLBACK;

START TRANSACTION;
    SELECT COUNT(*) FROM Avaliação;
    DELETE FROM Avaliação WHERE ped_id > 5;
    SELECT COUNT(*) FROM Avaliação;
ROLLBACK;

START TRANSACTION;
    SELECT COUNT(*) FROM Avaliação;
    -- TRUNCATE tabela1;
    -- TRUNCATE tabela2;
    DELETE FROM tabela1;
    DELETE FROM tabela2;
    DELETE FROM Avaliação WHERE ped_id > 5;
    SELECT COUNT(*) FROM Avaliação;
ROLLBACK;

SELECT * FROM tabela1;
SELECT * FROM tabela2;
SELECT COUNT(*) FROM Avaliação;
SET SQL_SAFE_UPDATES = ON;

-- Consultas e transações para a tabela Pedidos

SELECT * FROM Pedidos WHERE Ped_id = 1;

UPDATE Pedidos SET Ped_status = 'Aguardando pagamento' WHERE Ped_id = 1;

SELECT * FROM Pedidos WHERE Ped_id = 1;

-- Consultas e transações para a tabela Pedido_produtos

SELECT * FROM Pedido_produtos WHERE Ped_id = 1;

UPDATE Pedido_produtos SET Pedprod_qtd = '5' WHERE Ped_id = 1;

SELECT * FROM Pedido_produtos WHERE Ped_id = 1;

-- Consultas e transações para a tabela Produtos

SELECT * FROM Produtos WHERE Prod_id = 1;

UPDATE Produtos SET Prod_nome = 'Novo Nome' WHERE Prod_id = 1;

SELECT * FROM Produtos WHERE Prod_id = 1;

-- Consultas e transações para a tabela Usuarios

SELECT * FROM Usuarios WHERE Usu_id = 1;

UPDATE Usuarios SET Usu_nome = 'Novo Nome' WHERE Usu_id = 1;

SELECT * FROM Usuarios WHERE Usu_id = 1;

-- Consultas e transações para a tabela Endereço

SELECT * FROM Endereço WHERE Usu_id = 1;

UPDATE Endereço SET End_logradouro = 'Nova Rua' WHERE Usu_id = 1;

SELECT * FROM Endereço WHERE Usu_id = 1;
