create database "DDLQuery";
--create Enums
create type Gender as enum('Male', 'Female');
create type Genre as enum('DETECTIVE', 'DRAMA', 'HISTORY', 'ROMANCE', 'BIOGRAPHY', 'FANTASY');

--create Tables
create table Publisher(publisher_id serial primary key , name varchar);
create table Author(author_id serial primary key , first_name varchar, last_name varchar, email varchar, date_of_birth date, country varchar, gender Gender);
create table Books(book_id serial primary key , name varchar, country varchar, published_year date, price numeric, genre Genre);
create table Language(language_id serial primary key , language varchar);

--add columns
alter table books add column language_id int;
alter table books add column publisher_id int;
alter table books add column author_id int;

--Rename tables name
alter table publisher rename to Publishers;
alter table author rename to Authors;
alter table language rename to Languages;

--add constraint and change column
alter table authors add constraint email unique (email);
alter table languages alter column language set not null;

--insert in to tables
insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');

insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '25-9-1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10-10-1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5-5-1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4-4-1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7-3-1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12-12-1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12-12-1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1-2-1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11-11-1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9-8-1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12-12-1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8-8-1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3-3-1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8-8-1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10-10-1962', 'United States', 'Female');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values('Taina', 'Russia', '12/11/2021', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '9/12/2004', '446', 'ROMANCE', '5', '13', '11'),
      ('Homo Faber', 'Germany', '10/4/2022', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '1/2/2011', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '11/7/2015', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '12/1/2018', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '6/12/2004', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '5/9/2022', '349',  'HISTORY', '4', '4', '2'),

      ('Emil und die Detektive', 'Germany', '11/6/2010', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '1/3/2015', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '3/2/2012', '763', 'ROMANCE', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '10/3/2018', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '5/10/2019', '378', 'ROMANCE', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '24/9/2000', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '2/8/2015', '502', 'ROMANCE', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '19/6/2008', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '13/10/2007', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '14/11/2017', '422', 'ROMANCE', '2', '8', '5'),
      ('Lao Tse', 'China', '16/7/2005', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '12/4/2004', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '4/1/2008', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '6/1/2020', '420', 'ROMANCE', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '13/2/2008', '396', 'ROMANCE','1', '9', '4'),
      ('Die R uber', 'Germany', '25/6/2020', '300', 'ROMANCE', '3', '7', '12'),
      ('Jung Chang', 'China', '14/5/2021', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '10/4/2015', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '9/1/2023', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '7/1/2020', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '11/10/2021', '599', 'BIOGRAPHY','1', '2', '15');

--requests
-- 1. Китептердин атын, чыккан жылын, жанрын чыгарыныз.
    select name, published_year, genre from books;

-- 2. Авторлордун мамлекеттери уникалдуу чыксын.
    select distinct country from authors;

-- 3. 2020-2023 жылдардын арасындагы китептер чыксын.
    select * from books where published_year between '1-1-2020' and '31-12-2023';

-- 4. Детектив китептер жана алардын аттары чыксын.
    select name, genre from books where genre = 'DETECTIVE';

-- 5. Автордун аты-жону author деген бир колонкага чыксын.
    select (first_name, last_name) as author from authors;

-- 6. Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
    select first_name, last_name from authors where country in ('Germany', 'France') order by first_name;

-- 7. Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын.
    select name, country, published_year, price, genre from books where genre not in ('ROMANCE') and price < 500;

-- 8. Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
    select * from authors where gender iN ('Female') limit 3;

-- 9. Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
    select * from authors where email like '%.com' and length(first_name) = 4 and gender in ('Female');

-- 10. Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
    select country, count(*) from authors group by country;

-- 11. Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
    select country, count(*) from authors group by country having count(*) = 3 order by country;

-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
    select genre, sum(price) from Books group by genre;

-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
    select genre, min(price) from books where genre in ('ROMANCE', 'DETECTIVE') group by genre;

-- 14. История жана Биографиялык китептердин сандарын чыгарыныз
    select genre, count(*) from books where genre in ('HISTORY', 'BIOGRAPHY') group by genre;

-- 15. Китептердин , издательстволордун аттары жана тили чыксын
    select p.name, l.language from books b
    inner join languages l on l.language_id in (b.language_id)
    inner join publishers p on p.publisher_id in (b.publisher_id);

-- 16. Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
    select a.*, p.* from authors a
        left join public.books b on a.author_id = b.author_id
        left join publishers p on p.publisher_id = b.publisher_id order by  first_name;

-- 17. Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
    select a.first_name, a.last_name, b.* from authors a
        left join books b on b.author_id = a.author_id;

-- 18. Кайсы тилде канча китеп бар экендиги ылдыйдан ойдого сорттолуп чыксын.
    select language, count(*) from languages l
        inner join books b on l.language_id = b.language_id group by language order by language desc;

-- 19. Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
    select p.name, round(avg(b.price)) from publishers p
        inner join books b on b.publisher_id = p.publisher_id
        group by  p.name;

-- 20. 2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
    select b.*, a.first_name, a.last_name from books b
        inner join authors a on a.author_id = b.author_id
    where b.published_year between '1-1-2010' and '31-12-2015';

-- 21. 2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
    select a.first_name, a.last_name, sum(price)from books b
        inner join authors a on a.author_id = b.author_id
                                          where b.published_year between '1-1-2010' and '31-12-2015'
                                          group by first_name, last_name;