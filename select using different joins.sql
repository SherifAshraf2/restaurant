select first_name , last_name, Email   from customers
left join orders on CustomerID = orderID;
 
select first_name, last_name, Email from customers
inner join chefs on customerID = chefID;
 
select first_name , last_name, Email from customers
full join orders on CustomerID = orderID;
 
select cashierID , first_name, last_name from cashiers
join chefs on customerID = chefID;
 
select cashierID , first_name, last_name from cashiers
right join chefs on customerID = chefID;
