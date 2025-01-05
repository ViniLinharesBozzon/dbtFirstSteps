SELECT
      OrderID
    , OrderDate
    , CustomerID
    , EmployeeID
    , StoreID
    , Update_at
    , CASE
        WHEN Status = '01'   THEN 'In Progress'
        WHEN Status = '02'   THEN 'Completed'
        WHEN Status = '03'   THEN 'Cancelled'
        ELSE NULL
    END                     AS StatusDesc
    , status                AS statusCD
FROM
    {{ source('bronzeSchema', 'ordr') }}