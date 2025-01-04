-- Creating the tables that are needed for the dbtProject

CREATE TABLE IF NOT EXISTS `DBTDEV`.customers (
    customerID INT              PRIMARY KEY
,   firstName  VARCHAR(100)
,   lastName   VARCHAR(100)
,   email      VARCHAR(200)
,   phone      VARCHAR(50)
,   address    VARCHAR(200)
,   city       VARCHAR(50)
,   state      VARCHAR(50)
,   zipCode    VARCHAR(10)
, update_at   TIMESTAMP
)

CREATE TABLE IF NOT EXISTS `DBTDEV`.orders (
    orderID       INT               PRIMARY KEY
,   orderDate     DATE
,   customerID    INT
,   employeeID    INT
,   storeID       INT
,   status        VARCHAR(10)
,   update_at     TIMESTAMP
)
