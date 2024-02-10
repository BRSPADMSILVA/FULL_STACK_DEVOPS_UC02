CREATE DATABASE db_MeusLivros;

CREATE TABLE tbl_Autores (
IdAutor SMALLINT AUTO_INCREMENT,
NomeAutor VARCHAR(50) NOT NULL,
SobrenomeAutor VARCHAR(60) NOT NULL,
CONSTRAINT pk_id_autor PRIMARY KEY (IdAutor)
);

CREATE TABLE tbl_Editoras (
IdEditora SMALLINT PRIMARY KEY
AUTO_INCREMENT,
NomeEditora VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_Assuntos (
IdAssunto Tinyint AUTO_INCREMENT,
Assunto VARCHAR(25) NOT NULL,
CONSTRAINT pk_id_assunto PRIMARY KEY (IdAssunto)
);

CREATE TABLE IF NOT EXISTS tbl_Livros (
IdLivro SMALLINT NOT NULL AUTO_INCREMENT,
NomeLivro VARCHAR(70) NOT NULL,
ISBN13 VARCHAR(13) NOT NULL,
DataPub DATE,
PrecoLivro DECIMAL(10,2) NOT NULL,
NumeroPaginas SMALLINT NOT NULL,
IdEditora SMALLINT NOT NULL,
IdAssunto Tinyint NOT NULL,
CONSTRAINT pk_id_livro PRIMARY KEY (IdLivro),
CONSTRAINT fk_id_editora FOREIGN KEY (IdEditora) REFERENCES tbl_Editoras
(IdEditora) ON DELETE CASCADE,
CONSTRAINT fk_id_assunto FOREIGN KEY (IdAssunto) REFERENCES tbl_Assuntos
(IdAssunto) ON DELETE CASCADE
);

CREATE TABLE tbl_LivrosAutores (
IdLivro SMALLINT NOT NULL,
IdAutor SMALLINT NOT NULL,
CONSTRAINT pk_id_livro_autor PRIMARY KEY (IdLivro, IdAutor),
CONSTRAINT fk_id_livros FOREIGN KEY (IdLivro) REFERENCES tbl_Livros
(IdLivro),
CONSTRAINT fk_id_autores FOREIGN KEY (IdAutor) REFERENCES tbl_Autores
(IdAutor)
);

SHOW TABLES;

DESCRIBE tbl_Emprestimos;

INSERT INTO tbl_autores (NomeAutor, SobrenomeAutor)
VALUES
(ABC PAPELARIA 100100 5000,00 20/01/2017 ITAU
(LIVRARIA FERNANDES 100110 2500,00 22/01/2017 ITAU
(LIVRARIA FERNANDES 100120 1500,00 15/10/2016 BRADESCO
(ABC PAPELARIA 100130 8000,00 15/10/2016 SANTANDER
(LER E SABER 200120 10500,00 26/04/2018 BANCO DO BRASIL
(LIVROS E CIA 200125 2000,00 26/04/2018 BANCO DO BRASIL
(LER E SABER 200130 11000,00 26/09/2018 ITAU
(PAPELARIA SILVA 250350 1500,00 26/01/2018 BRADESCO
(LIVROS MM 250360 500,00 18/12/2018 SANTANDER
(LIVROS MM 250370 3400,00 26/04/2018 SANTANDER
(PAPELARIA SILVA 250380 3500,00 26/04/2018 BANCO DO BRASIL
LIVROS E CIA 453360 1500,00 15/06/2018 ITAU
LIVROS MM 453365 5400,00 15/06/2018 BRADESCO
PAPELARIA SILVA 453370 2350,00 27/12/2017 ITAU
LIVROS E CIA 453380 1550,00 27/12/2017 BANCO DO BRASIL
ABC PAPELARIA 980130 4000,00 11/12/2016 ITAU
LIVRARIA FERNANDES 770710 2500,00 15/11/2016 SANTANDER
ABC PAPELARIA 985001 3000,00 11/09/2016 ITAU
PAPEL E AFINS 985002 2500,00 12/03/2016 SANTANDER
LER E SABER 888132 2500,00 05/03/2017 ITAU 








('Daniel', 'Barret'), ('Gerald', 'Carter'), ('Mark', 'Sobell'),
('William', 'Stanek'), ('Richard', 'Blum'), ('Christine', 'Bresnahan'),
('Richard', 'Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'),
('Robert', 'Eckstein'), ('Paul', 'Horowitz'), ('Winfield', 'Hill'),
('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk');

INSERT INTO tbl_editoras (NomeEditora)
VALUES
('Prentice Hall'), ('O´Reilly'),
('Microsoft Press'), ('Wiley'),
('Mc Graw Hill'), ('Bookman'),
('Novatec'), ('Apress'),
('Sybex'), ('Mike Murach and Associates');

INSERT INTO tbl_Assuntos (Assunto)
VALUES
('Ficção'), ('Botânica'),
('Eletrônica'), ('Matemática'),
('Aventura'), ('Literatura'),
('Informática'), ('Suspense');

INSERT INTO tbl_Livros (NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPaginas, IdAssunto,
IdEditora)
VALUES
('Linux Command Line and Shell Scripting','9781118983843', '20150109', 165.55, 816, 7, 4),
('SSH, the Secure Shell','9780596008956', '20050517', 295.41, 672, 7, 2),
('Using Samba','9780596002565', '20031221', 158.76, 449, 7, 2),
('A Arte da Eletrônica', '9788582604342', '20170308', 176.71, 1160, 7, 6),
('Windows Server 2012 Inside Out','9780735666313', '20130125', 179.51, 1584, 7, 3),
('Murach´s MySQL','9781943872367', '20190501', 227.64, 650, 7, 10),
('Practical Electronics for Inventors', '9781259587542', '20160711', 119.58, 1056, 3, 5);


INSERT INTO tbl_LivrosAutores (IdLivro, IdAutor)
VALUES
(100,5), (100,6),
(101,1), (101,7), (101,8),
(102,2), (102,9), (102,10),
(103,11), (103,12),
(104,4),
(105,13),
(106,14), (106,15);



SELECT * FROM tbl_Autores;
SELECT * FROM tbl_Editoras;
SELECT * FROM tbl_Assuntos;
SELECT * FROM tbl_Livros;
SELECT * FROM tbl_LivrosAutores;





CREATE TABLE tbl_emprestimo (
IdEmprestimo TINYINT PRIMARY KEY,
NomeLivro VARCHAR (60) NOT NULL,
NomeEmprestador VARCHAR (50) NOT NULL);





insert into tbl_emprestimo (Idemprestimo, nomelivro, nomeemprestador)
value
(20, 'o cortiço' , 'joao da silva'),
(21, 'a moreninha' , 'Marcos de Souza'),
(22, 'macunaima' , 'jAna de Abreu');

/* Bloco de comentários que
ocupa várias linhas */

/* select*from tbl_emprestimo;

truncate table tbl_emprestimo;

drop table tbl_emprestimo; */

DELETE FROM tbl_Editoras
WHERE IdEditora = 11;
/********************************************************/
INSERT INTO tbl_editoras (NomeEditora)
VALUES
('Scribner'), ('Stephen King');

select*from tbl_assuntos;


select*from tbl_Livros;

select*from tbl_autores;

/********************************************************/
INSERT INTO tbl_autores (NomeAutor,SobrenomeAutor)
VALUES
('Stephen', 'King');

/********************************************************/
INSERT INTO tbl_assuntos (Assunto)
VALUES
('Terror');

/********************************************************/
INSERT INTO tbl_Livros (NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPaginas, IdAssunto, IdEditora)
VALUES
('It','9781501182099', '20170611', 48.74, 816, 9, 11);

/*  ou o seguinte comando  ***/
/*
INSERT INTO tbl_Livros (NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPaginas, IdAssunto, IdEditora)
VALUES
('It','9781501182099', '20170611', 48.74, 816, 
(select ideditora from tbl_editoras where nomeeditora = 'Scriber'),
(select idassunto from tbl_assuntos where assunto = 'Terror')
);
*/
/********************************************************/
DELETE FROM tbl_Editoras
WHERE IdEditora = 11;

select*from tbl_Livros;
/********************************************************/
DELETE FROM tbl_autores
WHERE IdAutor = 16;

select*from tbl_autores;

-- Verificar registros corretos

select * from tbl_livros;
 
 -- Exclua dados da tabelas
 
 delete from tbl_editoras where NomeEditora = 'scriber';
 
 delete from tbl_autores where NomeAutor = 'Shephen';
 
 delete from tbl_autores where NomeAutor = 'Shephen' and SobrenomeAutor = 'King';
 
 select  *from tbl_assuntos;
 
 select nomeautor  = 'Mark', SobrenomeAutor = 'Sobell' from  tbl_autores;
 
 select * from tbl_livros;
  
 select * from tbl_livros order by NomeLivro asc;
 
 select * from tbl_livros order by NomeLivro desc;
 
 select nomelivro, ideditora from  tbl_livros order by IDEditora;
 
 select nomelivro, PrecoLivro from tbl_livros order by PrecoLivro desc;
 
 select nomelivro, datapub, idassunto from tbl_livros order by IdAssunto, NomeLivro;
 
 
