-- we want to find
-- all the order ids
-- by the customer's last name
-- select lastname and orderid
SELECT LastName,
  OrderId -- from customer's table
FROM Customer -- join to info from the
  -- order's table
  JOIN Orders -- join on the key, by using
  -- customerid from customer's
  -- and order's table
  on Customer.CustomerId = Orders.CustomerId;