SELECT
      OS.CustomerID
    , C.CustomerName
    , SUM(OS.OrderCount) AS ordercount
    , SUM(OS.Revenue)    AS Revenue
FROM
    {{ ref('orders_fact') }} OS
JOIN
    {{ ref('customers_stg') }} C
ON
    OS.CustomerID = C.CustomerID
GROUP BY
      OS.CustomerID
    , C.CustomerName