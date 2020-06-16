select first_name,last_name from customers 
where last_name like 'X%'
group by last_name,Email; 


SELECT COUNT(first_name) FROM waiters
GROUP BY first_name
