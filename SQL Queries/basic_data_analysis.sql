-- Query 1: Displays all data from the customer table
SELECT * FROM customer;

-- Query 2: Displays all data for customers that live in New York
SELECT * FROM customer WHERE State = 'New York';

-- Query 3: Displays how many paying customers that don't to be contacted
SELECT COUNT(*) FROM customer 
WHERE Paying_Customer = 'Yes' AND Do_Not_Contact = 'No';

-- Query 4: Displays first name, last name, and phone number for every paying customers that don't to be contacted
SELECT First_Name, Last_Name, Phone_Number FROM customer 
WHERE Paying_Customer = 'Yes' AND Do_Not_Contact = 'No';

-- Query 5: Displays how many customers are from each state
SELECT State, COUNT(*) AS Customer_Count FROM customer GROUP BY State;

-- Query 6: Creates customer table
CREATE TABLE customer(
    Customer_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(40),
    Last_Name VARCHAR(40),
    Phone_Number VARCHAR(12),
    Paying_Customer VARCHAR(3),
    Do_Not_Contact VARCHAR(3),
    Street_Address VARCHAR(60),
    State VARCHAR(30),
    Zip_Code VARCHAR(10)
);

-- Query 7: Inserts new data into the customer table
INSERT INTO customer (First_Name, Last_Name, Phone_Number, Paying_Customer, Do_Not_Contact, Street_Address, State, Zip_Code)
VALUES ('Richard', 'Timothy', '123-567-4234', 'Yes', 'No', '261 Monterey Lane', 'New York', '18532');

-- Query 8: Updates table by adding a new column for email
ALTER TABLE customer ADD Email VARCHAR(100);

-- Query 9: Adds data into every empty email column by concatenating customer's first and last name
UPDATE customer
SET Email = CONCAT(LOWER(First_Name), '_', LOWER(Last_Name), '@example.com')
WHERE Email IS NULL;

-- Query 10: Deletes data for a specific customer ID
DELETE FROM customer WHERE customer_ID = 1007;