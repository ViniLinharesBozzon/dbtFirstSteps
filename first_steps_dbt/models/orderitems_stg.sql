SELECT
      orderItemID
    , orderID
    , productID
    , quantity
    , UnitPrice
    , update_at
    , Quantity * UnitPrice AS TotalPrice
FROM
    BRONZE.ORDERITEMS
