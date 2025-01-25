
------------------------Parent Table -------------------------------
CREATE TABLE ShopDetails (
    ShopID INT PRIMARY KEY, ---------------------primary key  as a foreign key 
    ShopName VARCHAR(30),
    ShopLocation VARCHAR(30)
);
---------------------- Entries Insertion----------------------------
INSERT INTO ShopDetails (ShopID, ShopName, ShopLocation) VALUES 
(1, 'TechHub', 'Mumbai'),
(2, 'ToolsFactory', 'Delhi'),
(3, 'GadgetStore', 'Bangalore'),
(4, 'StylePoint', 'Chennai'),
(5, 'FoodiesHub', 'Kolkata'),
(6, 'NatureMart', 'Hyderabad'),
(7, 'LibraryLane', 'Pune'),
(8, 'AutoGarage', 'Ahmedabad'),
(9, 'KidsKingdom', 'Jaipur'),
(10, 'PetHeaven', 'Lucknow');

------------------------------Child Table -----------------------------
CREATE TABLE ShopItems (
    ItemID INT PRIMARY KEY,
    ShopID INT,
    ItemType VARCHAR(30),
    OwnerName VARCHAR(30),
    FOREIGN KEY (ShopID) REFERENCES ShopDetails(ShopID) --------Foreign key 
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-----------------------------         Duumy Data Insertion for 2nd table 
INSERT INTO ShopItems (ItemID, ShopID, ItemType, OwnerName) VALUES 
(101, 1, 'Electronics', 'Rahul Mehta'),
(102, 1, 'Accessories', 'Anita Shah'),
(103, 2, 'Hardware', 'Suresh Patel'),
(104, 3, 'Mobile', 'Deepak Jain'),
(105, 4, 'Clothing', 'Aarav Kumar'),
(106, 5, 'Groceries', 'Sneha Gupta'),
(107, 6, 'Organic', 'Amit Das'),
(108, 7, 'Books', 'Rohit Verma'),
(109, 8, 'Automobile', 'Kavita Singh'),
(110, 9, 'Toys', 'Rajesh Yadav');


-------Inner Join --------------------- two tables 
select 
ShopDetails.ShopID,
ShopDetails.ShopLocation,
ShopDetails.ShopName,
ShopItems.OwnerName,
ShopItems.ItemID
from ShopDetails
inner join ShopItems
on 
ShopDetails.ShopID = ShopItems.ShopID


------------- Apllying Cacade ON both ---------------------------
----------------------Applying delete ---------------------------
DELETE FROM ShopDetails
WHERE ShopID = 3;

-------------Update -------------------------------------------------

UPDATE ShopDetails
SET ShopName = 'winyyyyyyyyyyyyyyyyyyyy',
ShopLocation = 'delhiiiiiiiiiiiiiiiiiiiiiiiiii'
WHERE ShopID = 2 

