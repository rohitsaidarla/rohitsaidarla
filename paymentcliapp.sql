create database paymentscliapp;
show Databases;
use paymentscliapp;
CREATE TABLE User_Info(
User_Id INT NOT NULL,
First_Name VARCHAR(25),
Last_Name VARCHAR(25),
Phone_No VARCHAR(15),
Date_Of_Birth VARCHAR(25),
Address VARCHAR(100),
PassWord VARCHAR(25),
Curr_Wallet_Balance DOUBLE,
PRIMARY KEY (User_id)
);
show tables;
-- DROP TABLE User_Info;
desc User_Info;
CREATE TABLE Bank_Account_Details(
Bank_Acct_No INT NOT NULL,
Bank_Acct_BankName VARCHAR(25),
Acct_TypeId INT NOT NULL,
Bank_ISFC_Code VARCHAR(10),
Bank_AcctPin INT,
User_Id INT,
Curr_Bank_Balance DOUBLE,
FOREIGN KEY (User_Id) REFERENCES User_Info (User_Id),
FOREIGN KEY (Acct_Type) REFERENCES Acct_Type (AcctType_Id),
PRIMARY KEY (Bank_Acct_No));
show tables;
desc Bank_Account_Details;
CREATE TABLE Bank_Acct_Types_details(
Bank_AcctType_Id INT NOT NULL,
Bank_AcctType_Code VARCHAR(3),
Bank_AcctType_Desc VARCHAR(20),
PRIMARY KEY (Bank_AcctType_Id));
show tables;
desc Bank_Acct_Types_details;
Drop table Acct_Types;
CREATE TABLE Transcaction(
Txn_Id INT NOT NULL,
Txn_Date datetime,
Txn_Amount DOUBLE,
Txn_Type Enum("CREDIT","DEBIT"),
Txn_AcctType ENUM("BANK_ACCOUNT","WALLET","CASH"),
Txn_user_Id INT,
PRIMARY KEY (Txn_Id)
);
show tables ;
 desc Transcaction; 
 desc  user_info; 
 desc  bank_account_details;
 desc  bank_acct_types_details;

