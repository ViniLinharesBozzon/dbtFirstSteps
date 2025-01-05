-- Creating the tables that are needed for the dbtProject
-- Creating using  BRONZE, SILVER, AND GOLD format as databases because MySQL does not support schemas
CREATE DATABASE IF NOT EXISTS BRONZE;
CREATE DATABASE IF NOT EXISTS SILVER;
CREATE DATABASE IF NOT EXISTS GOLD;

CREATE TABLE IF NOT EXISTS `BRONZE`.customers (
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

CREATE TABLE IF NOT EXISTS `BRONZE`.orders (
    orderID       INT               PRIMARY KEY
,   orderDate     DATE
,   customerID    INT
,   employeeID    INT
,   storeID       INT
,   status        VARCHAR(10)
,   update_at     TIMESTAMP
)


CREATE TABLE IF NOT EXISTS `BRONZE`.ORDERITEMS (
     orderItemID    INT PRIMARY KEY
 ,   orderID        INT
 ,   productID      INT
 ,   quantity       INT
 ,   unitPrice      DECIMAL(10,2)
 ,   update_at      TIMESTAMP
);
