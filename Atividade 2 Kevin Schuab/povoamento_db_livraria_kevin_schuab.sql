use livraria_kevin_schuab;

insert into autores (nome)
values('J. L. Rowling'),
('J. R. R. Tolkien'),
('Jane Austen'),
('Georg Orwell'),
('Willian P. Young'),
('Machado de Assis'),
('Antonie de Saint-Exupéry'),
('Fiodor Dastoiévski'),
('Markus Zusak'),
('Paulo Coelho'),
('Victória Aveyard'),
('Sarah J. Maas'),
('V. E. Schwab'),
('Angie Thomas'),
('Neal Schusterman');

insert into generos (genero)
values ('Fantasia'),
('Romance'),
('Ficção Científica'),
('Suspense'),
('Mistério'),
('Biografia'),
('Drama'),
('Auto Ajuda'),
('Poesia'),
('História');

insert into livros(nome, data_lancamento, autores_id)
values ('Harry Potter e aPedra Filosofal', '1997/06/26', 1),
('O Senhor dos Aneis: A sociedade do Anel', '1954/07/29', 2),
('Orgulho e Preconceito', '1813/01/28', 3),
('1984', '11949/06/08', 4),
('A Cabana', '2007/07/08', 5),
('Dom Casmurro', '1899/01/01', 6),
('O Pequeno Príncipe', '1943/04/6', 7),
('Crime e Castigo', '1867/01/01', 8),
('A menina que roubava livros', '2005/01/31', 9),
('O Alquimista', '1988/04/22', 10),
('Rainha Vermelha', '2015/02/10', 11),
('Trono de Vidro', '2012/08/02', 12),
('A vida invisível de Addie LaRue', '2020/10/06', 13),
('O ódio que você semeia', '2017/02/28', 14),
('O Ceifador', '2016/11/22', 15);

insert into genero_livro(generos_id, livros_id)
values (1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(2,6),
(1,7),
(10,7),
(2,8),
(2,9),
(10,9),
(7,9),
(2,10),
(1,11),
(1,12),
(2,13),
(1,13),
(2,14),
(3,15);

insert into cliente(nome, cpf, telefone, endereco, data_nascimento)
values ('João Silva', 21230771271, '(21)98754-2103', 'Rua 1, 456', '2015/02/13'),
('Maria Souza', 56589673330, '(68)99682-4741', 'Avenida Afonso Pena, 512', '2000/01/08'),
('Carlos Santos', 45130422309, '(67)98824-3836', 'Rua Serra de Bragança, 123', '1998/06/16'),
('Ana Oliveira', 79390785855, '(81)98692-4666', 'Avenida Governador José Malcher, 684', '2011/03/02'),
('Pedro Ferreira', 77738383992, '(62)98402-4232', 'Avenida Tocantins. 23', '1990/01/20'),
('Laura Mendes', 48762970020, '(68)97438-9958', 'Rua Pantanal, 9875', '1967/12/25'),
('Rafael Almeida', 32713929784, '(98)98758-4167', 'Rua Tuiuiu, 98', '1986/11/27'),
('Camila Costa', 44207986707, '(68)99174-6546', 'Rua Dezessete de Junho, 456', '1996/04/24'),
('Lucas Perreira', 84689462909, '(99)98554-5181', 'Rua Macapuru, 987', '1995/03/16'),
('Letícia Rodrigues', 63748934769, '(55)98712-3765', 'Avenida Nações Unidas, 357', '2001/08/27');

insert into emprestimo(data_pedido, data_entrega, livros_id, cliente_id)
values ('2022/02/02', '2022/02/09', 5, 2),
('2022/01/05', '2022/01/12', 11, 2),
('2022/03/15', '2022/03/22', 6, 3),
('2022/02/06', '2022/02/13', 8, 8),
('2022/02/12', '2022/02/19', 9, 4),
('2022/01/05', '2022/01/12', 4, 5),
('2022/03/06', '2022/03/13', 4, 9),
('2022/05/11', '2022/05/18', 9, 8),
('2022/04/20', '2022/04/27', 4, 2);


insert into classificacao(livros_id, cliente_id, class_estrelas)
values (5, 2, 4.52),
(11, 2, 5),
(6, 2, 4.98),
(8, 8, 4.56),
(9, 4, 3.5),
(4, 5, 5),
(4, 9, 4.9),
(9, 8, 4.89),
(4, 2, 4.99);