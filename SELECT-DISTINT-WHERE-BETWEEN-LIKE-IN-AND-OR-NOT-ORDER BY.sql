-- SELECT

SELECT * FROM Avaliação;

SELECT Ava_comentario FROM Avaliação;

SELECT Ava_comentario, Ava_nota FROM Avaliação;

-- DISTINCT

SELECT DISTINCT Ped_status FROM Pedidos;

SELECT DISTINCT Ped_id FROM Pedidos;

SELECT DISTINCT Ped_status, Ped_id FROM Pedidos;

SELECT DISTINCT Ped_status, Ped_id FROM Pedidos ORDER BY Ped_id ASC;

SELECT COUNT(DISTINCT Ped_status) FROM Pedidos;

SELECT COUNT(DISTINCT Ped_status) AS n_status_ped FROM Pedidos;

-- WHERE

SELECT * FROM Pedidos WHERE Ped_status = 'Em andamento';

SELECT * FROM Avaliação WHERE Ava_id = 1;

SELECT * FROM Avaliação WHERE Ava_id > 1;

SELECT * FROM Pedidos WHERE Ped_status <> 'Cancelado';

-- BETWEEN

SELECT * FROM Pedidos WHERE Ped_data BETWEEN '2023-03-01' AND '2023-03-08';

-- LIKE

SELECT * FROM Usuarios WHERE Usu_nome = 'João';

SELECT * FROM Usuarios WHERE Usu_nome LIKE '%João';

SELECT * FROM Usuarios WHERE Usu_nome LIKE 'João%';

SELECT * FROM Usuarios WHERE Usu_nome LIKE '%João%';

-- IN

SELECT * FROM Usuarios WHERE Usu_tipo IN ('Pessoa', 'Empresa');

-- AND - OR - NOT - ORDER BY

SELECT * FROM Usuarios;

SELECT * FROM Usuarios WHERE Usu_id = 1 AND Usu_tipo = 'Pessoa';

SELECT * FROM Usuarios WHERE Usu_id = 1 OR Usu_id = 3 ORDER BY Usu_id, Usu_tipo, Usu_nome;

SELECT * FROM Usuarios WHERE NOT Usu_id = 5 ORDER BY Usu_id, Usu_tipo DESC, Usu_nome;

SELECT * FROM Usuarios WHERE Usu_id = 1 AND (Usu_tipo = 'Pessoa' OR Usu_tipo = 'Empresa');
