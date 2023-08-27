-- We want to calculate
-- the total number a customer
-- has ever spent with H + Sport
-- and display the 10 customers who purchased the most

-- select customer id, first name, last name, and sum of total due
SELECT Customer.CustomerId,
  FirstName,
  LastName,
  Sum(TotalDue)
-- from customer table
FROM Customer
-- join to orders table on customer id
  JOIN Orders ON Customer.CustomerId = Orders.CustomerId
-- group by customer id, first name, last name
-- group by groups rows that have the same values
GROUP BY Customer.CustomerId,
  FirstName,
  LastName
-- order by sum of total due in descending order
ORDER BY Sum(TotalDue) DESC
-- limit to top 10 results
LIMIT 10