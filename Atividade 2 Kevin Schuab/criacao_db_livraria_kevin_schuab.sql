create database livraria_kevin_schuab;
use livraria_kevin_schuab;

create table autores(
id int not null auto_increment primary key,
 nome varchar(45) not null
);

create table classificacao(
id int not null auto_increment primary key,
livros_id int not null,
cliente_id int not null,
class_estrelas decimal(3,2) not null,
foreign key (livros_id) references livros(id),
foreign key (cliente_id) references cliente(id)
);

create table generos(
id int not null auto_increment primary key,
genero varchar(45) not null
);

create table cliente(
id int not null auto_increment primary key,
nome varchar(45) not null,
cpf varchar(12) not null,
telefone varchar(20),
endereco varchar(50),
data_nascimento date not null
);

create table livros(
id int not null auto_increment primary key,
nome varchar(45) not null, 
data_lancamento date not null,
autores_id int not null,
foreign key (autores_id) references autores(id)
);

create table genero_livro(
id int not null auto_increment primary key,
generos_id int not null,
livros_id int not null,
foreign key (generos_id) references generos(id),
foreign key (livros_id) references livros(id)
);

create table emprestimo(
id int not null auto_increment primary key,
data_pedido date not null,
data_entrega date not null,
livros_id int not null,
cliente_id int not null,
foreign key (livros_id) references livros(id),
foreign key (cliente_id) references cliente(id)
);