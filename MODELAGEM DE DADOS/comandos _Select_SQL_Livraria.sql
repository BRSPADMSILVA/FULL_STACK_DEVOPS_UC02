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










