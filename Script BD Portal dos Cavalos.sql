-- drop database portalDosCavalos;
CREATE DATABASE portalDosCavalos;
USE portalDosCavalos;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45)
);

CREATE TABLE historicoQuiz (
idQuiz INT AUTO_INCREMENT,
fkUsuario INT,
dtJogo DATE,
acertos INT,
erros INT,
PRIMARY KEY (idQuiz, fkUsuario),
CONSTRAINT fkUsuarioHistorico
	FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);

INSERT INTO usuario VALUES
(default, 'Danilo Oliveira','danilo.oliveira@gmail.com', '123456');

INSERT INTO historicoQuiz VALUES
(1, 1, '2024-10-08', 5, 3);


SELECT * FROM usuario;

SELECT * FROM historicoQuiz;

SELECT * 
FROM usuario
JOIN historicoQuiz
ON idUsuario = fkUsuario;