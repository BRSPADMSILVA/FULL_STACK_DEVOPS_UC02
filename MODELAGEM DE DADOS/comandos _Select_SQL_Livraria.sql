select idlivro, NomeLivro, IdEditora from tbl_livros where IdLivro > 102 and IdEditora < 4;

select idlivro, NomeLivro, IdEditora from tbl_livros where IdLivro > 102 or IdEditora < 4;

select idlivro, NomeLivro, IdEditora from tbl_livros where not IdEditora <=10;

select idlivro, NomeLivro, IdEditora from tbl_livros where IdLivro > 2 and not IdEditora <= 4;


### Alias com as
select NomeLivro as Livro, PrecoLivro as 'Preço do Livro'
from tbl_livros as Livros, PrecoLivro as Livros order by 'Preço do Livro' desc;

#****
select *from  tbl_editoras;

#****
SELECT NomeEditora
FROM `db_meuslivros`.`tbl_editoras`;

#****
SELECT NomeLivro, PrecoLivro, DataPub
FROM `db_meuslivros`.`tbl_livros` order by NomeLivro, PrecoLivro, DataPub desc;

#****
SELECT NomeAutor, SobrenomeAutor
FROM `db_meuslivros`.`tbl_autores` order by NomeAutor, SobrenomeAutor asc;

#****
SELECT IdAssunto
FROM `db_meuslivros`.`tbl_assuntos`;
SELECT NomeEditora
FROM `db_meuslivros`.`tbl_editoras`;
SELECT NomeLivro
FROM `db_meuslivros`.`tbl_livros`;

## ********
SELECT Assunto
FROM `db_meuslivros`.`tbl_assuntos` order by Assunto asc;

select count(*) from tbl_autores;

select count(*) as total from tbl_autores;

select count(ideditora) from tbl_livros;

select count(distinct ideditora) from tbl_livros;

select precolivro from tbl_livros;

# Selecionar ´por preco e minimo e maximo e media de preços
select max(precolivro) as 'livro masi caro' from tbl_livros;

select min(precolivro) as 'livro masi barato' from tbl_livros;

select avg(precolivro) as 'Media valor livro' from tbl_livros;

select sum(precolivro) as 'total gasto livros' from tbl_livros;

select sum(precolivro) / count(*)  from tbl_livros;
######### 

select count(*) as 'Quant.livros' , sum(numeropaginas) as 'paginas totais' , avg(numeropaginas) as 'Media de pags' from tbl_livros;

# select sum(precolivro) as 'total gasto livros' from tbl_livros where IdEditora =3 ;

select sum(precolivro) as 'total gasto livros' from tbl_livros where IdEditora =3 ;

select avg(precolivro) as 'Media valor livro' from tbl_livros where IdEditora = 2 and 3;

select NomeLivro, PrecoLivro
from tbl_livros
where PrecoLivro = (select max(PrecoLivro) from tbl_livros);

select nomelivro as livro, precolivro as preco from tbl_livros where precolivro between 170.0 and 18.0 or PrecoLivro
between 150.0 and 200.0 or PrecoLivro between 220.0 and 300.0;

# like
select * from tbl_livros;

select * from tbl_livros where nomelivro like '%A';

select * from tbl_livros where nomelivro like 'A%';

select * from tbl_livros where nomelivro like '%amba';

select * from tbl_livros where nomelivro not like 's%';

select nomelivro as livro from tbl_livros where nomelivro like '_i%';

select nomelivro as livro, precolivro as valor from tbl_livros 
where nomelivro not like 'A%' and precolivro <= 190.0;

#GROUP BY

select idassunto, sum(numeropaginas) from tbl_livros group by idassunto;

select ideditora, sum(PrecoLivro) from tbl_livros group by idEditora;

select ideditora, avg(numeropaginas), idassunto from tbl_livros group by idEditora;

select ideditora, sum(precolivro) from tbl_livros  where NumeroPaginas >= 1000 group by idEditora
order by NumeroPaginas;

select ideditora, avg(numeropaginas), IdAssunto from tbl_livros group by idEditora;

select ideditora, avg(numeropaginas), IdAssunto from tbl_livros group by idEditora having avg(NumeroPaginas) >= 1000;

#Desafio para testes de comandos:


CREATE TABLE IF NOT EXISTS tbl_contasreceber (
Idcontasreceber SMALLINT NOT NULL AUTO_INCREMENT,
Nome CHAR(40) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
Vencimento DATE,
Banco CHAR(10),
NumeroPaginas SMALLINT NOT NULL,
IdEditora SMALLINT NOT NULL,
IdAssunto Tinyint NOT NULL,
CONSTRAINT pk_id_livro PRIMARY KEY (IdLivro),
CONSTRAINT fk_id_editora FOREIGN KEY (IdEditora) REFERENCES tbl_Editoras
(IdEditora) ON DELETE CASCADE,
CONSTRAINT fk_id_assunto FOREIGN KEY (IdAssunto) REFERENCES tbl_Assuntos
(IdAssunto) ON DELETE CASCADE
);




CREATE TABLE `db_meuslivros`.`tbl_contas_receber` (
  `idtbl_contas_receber` INT NOT NULL,
  `Nome` CHAR(45) NULL,
  `Numero` VARCHAR(40) NOT NULL,
  `Valor` DECIMAL(10,2) NULL,
  `Vencimento` DATE NULL,
  `Banco` CHAR(10) NULL,
  PRIMARY KEY (`idtbl_contas_receber`, `Numero`));
  
  
  
  select * from tbl_livros inner join tbl_editoras;
  
  select * from tbl_livros inner join tbl_editoras on tbl_livros.IdEditora = tbl_editoras.IdEditora;
  
  select tbl_livros.NomeLivro, tbl_livros.ISBN13, tbl_assuntos from tbl_livros join tbl_assuntos 
  on tbl_livros.IdAssunto = tbl_assuntos.IdAssunto;
  
  select * from tbl_livros;
  select *from tbl_assuntos;
  
  
  
  select L.NomeLivro as livros, e.nomeeditora as
  editoras from tbl_livros as L join tbl_editoras as E on L.IdEditora = E.IdEditora
  where E.NomeEditora like 'M%';
  
  select * from tbl_assuntos right join tbl_livros on tbl_livros.IdAssunto = tbl_assuntos.IdAssunto;
  
  SELECT * FROM tbl_livros cross join tbl_livrosautores;
  
select nomelivro livro, precolivro preco, 'Livro Caro' resultado from tbl_livros
where PrecoLivro >= 150.0;
  
select nomelivro livro, precolivro preco, 'Livro razoavel' resultado from tbl_livros
where PrecoLivro < 150.0
order by Preco;

# unindo os dois comandos

select nomelivro livro, precolivro preco, 'Livro Caro' resultado from tbl_livros
where PrecoLivro >= 150.0
   union
select nomelivro livro, precolivro preco, 'Livro razoavel' resultado from tbl_livros
where PrecoLivro < 150.0
order by Preco;

# melhorando o comando select!!!

select l.nomelivro livro, l.precolivro 'preco Normal', 
l.precolivro * 0.90 'Preço Ajustado', a.assunto

from  tbl_Livros L inner join tbl_assuntos A
on l.idassunto = a.idassunto 
; 

select l.nomelivro livro, l.precolivro 'preco Normal', 
l.precolivro * 1.15 'Preço Ajustado', a.assunto

from  tbl_Livros L inner join tbl_assuntos A
on l.idassunto = a.idassunto; 



select l.nomelivro livro, l.precolivro 'preco Normal', 
l.precolivro * 0.90 'Preço Ajustado', a.assunto
from tbl_livros L inner join
tbl_assuntos A
on l.idassunto = a.idassunto
where l.precolivro > 200.00
union
select l.nomelivro livro, l.precolivro 'preco Normal', 
l.precolivro * 1.15 'Preço Ajustado', a.assunto
from  tbl_Livros L inner join tbl_assuntos A
on l.idassunto = a.idassunto; 


select l.nomelivro livro, l.precolivro 'preco Normal', 
l.precolivro * 0.90 'Preço Ajustado', a.assunto
from tbl_livros L inner join
tbl_assuntos A
on l.idassunto = a.idassunto
where l.precolivro > 200.00
union
select l.nomelivro livro, l.precolivro 'preco Normal', 
l.precolivro * 1.15 'Preço Ajustado', a.assunto
from  tbl_Livros L inner join tbl_assuntos A
on l.idassunto = a.idassunto
where a.assunto = 'Eletronica'
order by 'Preco Ajustado' desc; 








