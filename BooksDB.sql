create database BooksDB;
Drop database BooksDB;
use BooksDB;
create table Books(s_no int primary key,
                   book_title varchar(30),
                   author_name varchar(30),
                   genre varchar(30),
                   publication year,
                   price int);
insert into Books values
(1,"Cindrella","Walter Elias Disney","Cartoon",1997,5000),
(2,"Atomic Habits","James Clear","Life lesson",2018,3000),
(3,"Zombie","Hitler","Horror",1987,500),
(4,"Life of Pie","Mary Comb","Life lesson",2007,2000),
(5,"Life of Pi","Yann Martel","Fiction",2001,4000),
(6,"Life of Lord","Prince Jack","Fiction",1907,4000),
(7,"World tour","William","action",2002,5500),
(8,"The Magic","Rhonda Byrne.","Fiction",2012,3000),
(9,"Poppins","Wright Brothers","Cartoon",2010,3000),
(10,"A Little Life","Hanya Yanagihara","Story",2015,5000);
SELECT * FROM Books
WHERE book_title = "Atomic Habits";
UPDATE Books 
SET price = 6000
WHERE book_title = "The Magic";
DELETE from Books
WHERE book_title ="poppins" ;
SELECT * FROM Books;
SELECT AVG(price) FROM Books;
create table authors(s_no int primary key,
		    author_age int,
                    author_native varchar(50),
                    author_name varchar(60),
                    se_no int,
		    constraint fk_s_no foreign key(s_no) references Books(s_no));
insert into authors values
(1,20,"Dubai","William",5),
(2,20,"New York","James Clear",5),
(3,25,"Bombay","Zombie",2),
(4,30,"Sidney","Walter Elias Disney",1),
(6,40,"Darjiling","Wright Brothers",6),
(8,19,"India","Rhonda Byrne",2);
select * from books;
SELECT Books.s_no,Books.book_title, Books.genre, Books.publication, Books.price, Authors.author_name,Authors.author_native,Authors.author_age
FROM Books
JOIN Authors ON Books.s_no = Authors.s_no;