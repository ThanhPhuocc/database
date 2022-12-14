CREATE DATABASE AZBank
GO

USE AZBank
GO

CREATE TABLE CUSTOMER(
CUSTOMERID INT NOT NULL PRIMARY KEY,
NAME NVARCHAR(50),
 CITY NVARCHAR(50),
 COUNTRY NVARCHAR(50),
 PHONE NVARCHAR(15),
 EMAIL NVARCHAR(50),
)
GO

CREATE TABLE CUSTOMERACCOUNT(
ACCOUNTNUMBER CHAR(9) NOT NULL PRIMARY KEY,
 CUSTOMERID INT NOT NULL ,
 FOREIGN KEY(CUSTOMERID) REFERENCES dbo.CUSTOMER(CUSTOMERID),
 BALANCE  MONEY NOT NULL,
 MINACCOUNT MONEY,
)
GO

CREATE TABLE CUSTOMERTRANSACTION(
TRANSACTIONID INT NOT NULL PRIMARY KEY,
ACCOUNTNUMBER CHAR(9),
FOREIGN KEY(ACCOUNTNUMBER) REFERENCES dbo.CUSTOMERACCOUNT(ACCOUNTNUMBER),
ACCOUNTDATE SMALLDATETIME,
AMOUNT MONEY,
DEPOSITORWITHDRAW BIT,
)
GO




