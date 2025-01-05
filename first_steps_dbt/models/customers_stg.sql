SELECT
      CustomerID
    , FirstName
    , LastName
    , Email
    , Phone
    , Address
    , City
    , State
    , ZipCode
    , Update_at
    , CONCAT(FirstName, ' ', LastName) AS CustomerName
FROM
    BRONZE.CUSTOMERS