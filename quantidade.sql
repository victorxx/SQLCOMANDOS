DELIMITER //

CREATE PROCEDURE LIMITE(
    IN P_QUANTIDADE INT
)
BEGIN
    DECLARE v_quantidade INT;

    SELECT quantidade INTO v_quantidade FROM clientes ;

    IF v_quantidade < P_QUANTIDADE THEN
        SELECT 'não temos saldo o suficiente' AS mensagem;
    END IF;
END //

DELIMITER ;
call limite(70);
select * from clientes;
insert into clientes(quantidade,nomeproduto)values(32,'xboxone');
