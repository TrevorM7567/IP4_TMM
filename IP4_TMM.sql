USE henry;

#1
Select firstname, lastname
from author;

#2
SELECT title, TYPE
from book;

#3
SELECT publisherCode 
From book
Group by publisherCode;

#4
SELECT title, price, round((1-0.25)*price)
From book 
limit 5;

#5
SELECT title, price
From book
Where price>20.00;

#6
SELECT publisherName
From publisher
Where city="New York";

#7
SELECT publisherName
From publisher 
WHERE city != "New York";

#8
SELECT bookCode, onHand, branchNum
FROM inventory
WHERE onHand BETWEEN 2 and 4;

#9
SELECT count(title) as "Penguin Books"
FROM book, publisher
WHERE publisherName = "Penguin USA"
GROUP by publisherName;

#10
SELECT count(title)
FROM book
WHERE price <= 20.00;

#11
SELECT bookCode, title, TYPE as "Type of Book", price, paperback, book.publisherCode as "Publisher Code", publisherName as "Publisher Name", city
From book
Join publisher 
Where book.publisherCode = publisher.publisherCode;

#12
SELECT bookCode, title, TYPE as "Type of Book", price, paperback, book.publisherCode as "Publisher Code", publisherName as "Publisher Name", city
From book
Join publisher ON
book.publisherCode = publisher.publisherCode;

#13
SELECT title, city
From book
Join publisher ON
book.publisherCode = publisher.publisherCode
Order by title;

#14
SELECT title, branchNum, onHand
FROM book, inventory
group by title
Order by title;

#15
SELECT title, SUM(onHand) as "inventory"
from book
join inventory ON
book.bookCode = inventory.bookCode
group by title
order by inventory desc
limit 2;

#16
SELECT firstName, lastName, title
from author, book
order by title;