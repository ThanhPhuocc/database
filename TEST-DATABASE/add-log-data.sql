INSERT INTO CUSTOMER (CUSTOMERID, NAME, CITY, COUNTRY, PHONE, EMAIL)  
VALUES (456, N'JUNRÉC', N'HÀ NỘI', N'VIỆT NAM', N'+849453É', N'JUNRÉC@GMAIL.COM');

INSERT INTO CUSTOMERACCOUNT (ACCOUNTNUMBER, CUSTOMERID, BALANCE, MINACCOUNT)
VALUES ('DILOBER', 456,'236,545', '1,000,000');

INSERT INTO CUSTOMERTRANSACTION(TRANSACTIONID, ACCOUNTNUMBER, ACCOUNTDATE, AMOUNT, DEPOSITORWITHDRAW)
VALUES(4839, 'DILOBER', '2022-11-23  15:45:58', '200,00', 1);

SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMERACCOUNT;
SELECT * FROM CUSTOMERTRANSACTION;

SELECT * FROM CUSTOMER
WHERE CITY = N'HÀ NỘI';

SELECT NAME, PHONE, EMAIL, AccountNumber, Balance FROM CUSTOMER, CUSTOMERACCOUNT;