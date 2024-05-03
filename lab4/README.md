Write SQL statements to perform the following tasks:
a. Retrieve all products from the "Products" table.
select * from products;

b. Retrieve all products that belong to the "Clothing" category.
select * from products where category_id in (select category_id from categories where category_name="Clothing");

c. Retrieve the names and prices of all products that cost less than $100.
select product_name, price from products where price < 100;

d. Update the price of the "MacBook Pro" to $1399.
update products set price=1399 where product_name="MacBook";

e. Delete the "Dining Table" product from the "Products" table.
delete from products where product_name="Dining Table";

f. Retrieve the names and prices of all products that belong to the "Electronics"
category.
select product_name, price from products inner join categories on products.category_id=categories.category_id where category_name="Electronics";

g. Retrieve the names of all products that have a price greater than $500.
select product_name from products where price > 500;

h. Retrieve the names and prices of the top 3 most expensive products.

i. Update the price of all products in the "Clothing" category to be 10% higher.
update products set price=price*1.1 where category_id in (select category_id from categories where category_name="Clothing");

j. Delete all products that have a price less than $50.
delete from products where price < 50;

k. Retrieve the names and prices of all products sorted in descending order by
price.
select product_name, price from products order by price desc;

l. Retrieve the names and categories of all products, sorted in ascending order by
category_name.
select product_name, category_name from products inner join categories on products.category_id=categories.category_id order by category_name;

m. Delete all products that belong to the "Home" category.
delete from products where category_id in (select category_id from categories where category_name="Home");

n. Retrieve the names and prices of all products that have a price between $100
and $500.
select product_name, price from products where price > 100 AND price < 500;

o. Update the price of all products in the "Electronics" category to be 5% lower.
update products set price=price*0.95 where category_id in (select category_id from categories where category_name="Electronics");