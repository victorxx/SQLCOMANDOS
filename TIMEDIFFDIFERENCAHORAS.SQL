🔹 O que é TIMESTAMPDIFF
CREATE TABLE IF NOT EXISTS REGISTRO (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ENTRADA DATETIME,
    SAIDA DATETIME
);
INSERT INTO REGISTRO(ENTRADA)
VALUES(NOW());
UPDATE REGISTRO SET SAIDA=NOW() WHERE ID=1;

SELECT * FROM REGISTRO;
SELECT timestampdiff(SECOND,ENTRADA,SAIDA)
FROM REGISTRO;



TIMESTAMPDIFF é uma função do MySQL que calcula a diferença entre duas datas ou horários, retornando o resultado na unidade que você escolher (dias, horas, minutos, segundos etc.).
