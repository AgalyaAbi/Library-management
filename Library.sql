The project includes various SQL queries and data analysis tasks to extract valuable insights from the librarys data. Some of the key queries implemented include:
1.Retrieve the book title, category, and rental price of all available books.
 select book_title,category,rental_price from library where status='yes';
2.Retrieve all available books from library.
 select book_title from library where status='yes';
3.Retrieve the book titles and the corresponding customers who have issued those books.
  select book_title,publisher from library group by publisher;
4.Display the total count of books in each category.
  select category,count(*) from library group by category.
5.count publisher by category.
  select category,count(publisher) from library group by category;
6.List the published books by corresponding publisher.
   select book_title,publisher from library group by publisher.
7.update book status.
  update library set status='no'where book_title='Jane Eyre';
8.Display the names of customers who have issued a book in the category of Fiction.
  select publisher from library where category='Fiction';
9.delete book titles from the book table containing the category "history".
  delete from library where category='history';
10.get most expensive book for rent.
  select book_tittle,rental_price as rent from library order by rental_price desc limit 1;
11.retrieve books rented or available.get number of books available for rent.
   select book_title,status from library.
   select distinct book_title,count(status) from library where status='yes';
12.find books published by specific publisher.
   select book_title from library where publisher='Bantam';
13.retrieve all unique categories in the databases.
   select distinct category from library;
14.count books by each author.
   select author,count(book_title) from library group by author;
15.find books cheaper than a specific price.
  select book_title from library where rental_price<3;
16.add a new book to the database.
    insert into library(isbn,book_title,category,rental_price,status,author,publisher) values(978-0-8665-24536-6,'The Dark Night','Fiction',7,'yes','Stephen John','Larrence');
17.update the  status of a book.
   update library set status='no'where category='Fiction';
18.delete a book from the database.
     delete from library where book_title='A Games of Thrones';
19.find the cheapest book in a specific category.
    select book_title from library order by rental price asc limit 1;
20.get the total rental price for all books.
    select sum(rental_price) as Total rental price from library.
21.find books with the titles containing specific keywords.
    select book_titles from library where book_title=%library%;
22.calculate the average rental price by category.
    select category,avg(rental_price) as Avg_rentalprice from library group by category;
23.list books rented in descending order of rental price.
    select book_title from library order by rental_price desc;
24.find books by multiple authors.
    select book_title,author from library.
25.retreive books added in lasr 30 days(with created_at column assumed).
    select book_title,created_at from library where created_at>=date_sub(curdate()=internal 30 day);