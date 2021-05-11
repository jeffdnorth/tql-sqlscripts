--list of customers

SELECT city, sum(sales)   
from customers
group by city
having sum(sales) > 600000

