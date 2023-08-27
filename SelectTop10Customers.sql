-- We want to calculate
-- the total number a customer
-- has ever spent with H + Sport
-- and display the 10 customers who purchased the most
SELECT Customer.CustomerId,
  FirstName,
  LastName,
  Sum(TotalDue)
FROM Customer
  JOIN Orders ON Customer.CustomerId = Orders.CustomerId
GROUP BY Customer.CustomerId,
  FirstName,
  LastName
ORDER BY Sum(TotalDue) DESC
LIMIT 10