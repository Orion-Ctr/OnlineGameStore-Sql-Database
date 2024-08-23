-- Inserting records into Users table
INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (1, 'John Doe', 'john.doe@gmail.com', TO_DATE('2023-01-15', 'YYYY-MM-DD'), '123 Main St', TO_DATE('1990-05-21', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (2, 'Jane Smith', 'jane.smith@yahoo.com', TO_DATE('2022-03-12', 'YYYY-MM-DD'), '456 Elm St', TO_DATE('1985-08-30', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (3, 'Alice Johnson', 'alice.johnson@yahoo.com', TO_DATE('2021-07-20', 'YYYY-MM-DD'), '789 Oak St', TO_DATE('1992-11-15', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (4, 'Bob Brown', 'bob.brown@gmail.com', TO_DATE('2020-10-05', 'YYYY-MM-DD'), '321 Pine St', TO_DATE('1988-03-22', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (5, 'Eve White', 'eve.white@hotmail.com', TO_DATE('2019-06-25', 'YYYY-MM-DD'), '654 Cedar St', TO_DATE('1995-07-07', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (6, 'Carl Green', 'carl.green@gmail.com', TO_DATE('2023-02-10', 'YYYY-MM-DD'), '987 Maple St', TO_DATE('1991-09-16', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (7, 'Diana Rose', 'diana.rose@gmail.com', TO_DATE('2021-11-25', 'YYYY-MM-DD'), '654 Birch St', TO_DATE('1987-02-18', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (8, 'Frank Black', 'frank.black@yahoo.com', TO_DATE('2020-01-30', 'YYYY-MM-DD'), '321 Willow St', TO_DATE('1983-12-10', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (9, 'Grace Blue', 'grace.blue@hotmail.com', TO_DATE('2022-05-14', 'YYYY-MM-DD'), '789 Redwood St', TO_DATE('1994-04-22', 'YYYY-MM-DD'));

INSERT INTO Users (ID, Name, Email, DATE_OF_REGISTRY, Address, Date_of_Birth)
VALUES (10, 'Hank Purple', 'hank.purple@hotmail.com', TO_DATE('2019-08-20', 'YYYY-MM-DD'), '456 Cypress St', TO_DATE('1989-10-31', 'YYYY-MM-DD'));
COMMIT;

-- Inserting records into Customers table
INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (1, 'Doe', 'N.AM');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (2, 'Smith', 'EU');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (3, 'Johnson', 'Asia');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (4, 'Brown', 'S.AM');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (5, 'White', 'AUS');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (6, 'Green', 'EU');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (7, 'Rose', 'EU');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (8, 'Black', 'N.AM');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (9, 'Blue', 'AUS');

INSERT INTO Customers (Users_ID, Surname, Region)
VALUES (10, 'Purple', 'AUS');
COMMIT;

-- Inserting records into Developers table
INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (1, TO_DATE('2005-04-01', 'YYYY-MM-DD'), 150, 'A', NULL);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (2, TO_DATE('2010-06-15', 'YYYY-MM-DD'), 80, 'A', 1);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (3, TO_DATE('2015-09-30', 'YYYY-MM-DD'), 45, 'A', NULL);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (4, TO_DATE('2008-11-20', 'YYYY-MM-DD'), 200, 'A', 3);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (5, TO_DATE('2012-02-18', 'YYYY-MM-DD'), 60, 'D', NULL);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (6, TO_DATE('2011-04-15', 'YYYY-MM-DD'), 75, 'A', NULL);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (7, TO_DATE('2013-07-01', 'YYYY-MM-DD'), 95, 'A', 2);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (8, TO_DATE('2017-12-05', 'YYYY-MM-DD'), 120, 'D', NULL);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (9, TO_DATE('2006-03-11', 'YYYY-MM-DD'), 65, 'A', 4);

INSERT INTO Developers (Users_ID, Founding_Date, Employee_Count, Status, Publisher)
VALUES (10, TO_DATE('2018-09-22', 'YYYY-MM-DD'), 45, 'A', NULL);
COMMIT;

-- Inserting records into Age_rating table
INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (1, 'E', 0);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (2, 'T', 13);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (3, 'M', 17);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (4, 'AO', 18);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (5, 'PG', 10);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (6, 'G', 7);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (7, 'NC-17', 17);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (8, 'U', 0);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (9, '12A', 12);

INSERT INTO Age_rating (ID, Type, Age_limit)
VALUES (10, '15', 15);
COMMIT;


-- Inserting records into Region table
INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (1, 'USA', 'N');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (2, 'Canada', 'N');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (44, 'UK', 'Y');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (49, 'Germany', 'Y');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (81, 'Japan', 'N');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (91, 'India', 'N');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (61, 'Australia', 'N');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (86, 'China', 'Y');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (33, 'France', 'Y');

INSERT INTO Region (COUNTRY_CODE, COUNTRY_NAME, Restriction)
VALUES (39, 'Italy', 'N');
COMMIT;


-- Inserting records into Game_Titles table
INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (1, 'Omega one', 'ABC1234567890', TO_DATE('2021-05-15', 'YYYY-MM-DD'), 'Action', 59.99, 'PC', 1, 1);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (2, 'Halo Two', 'CDA7890123456', TO_DATE('2022-08-20', 'YYYY-MM-DD'), 'Adventure', 49.99, 'Xbox', 2, 2);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (3, 'GOW Three', 'EFA3456785678', TO_DATE('2020-11-25', 'YYYY-MM-DD'), 'RPG', 69.99, 'PS', 3, 44);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (4, 'C&C Four', 'GHZ9012345553', TO_DATE('2019-03-10', 'YYYY-MM-DD'), 'Strategy', 39.99, 'PC', 4, 49);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (5, 'BOF Five', 'IJQ5232367890', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'Sports', 29.99, 'Switch', 5, 81);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (6, 'Dragon Quest', 'ABC6543210987', TO_DATE('2021-10-05', 'YYYY-MM-DD'), 'RPG', 59.99, 'PC', 6, 91);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (7, 'Starlight', 'CDA9876543210', TO_DATE('2020-12-18', 'YYYY-MM-DD'), 'Adventure', 49.99, 'Xbox', 7, 61);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (8, 'Space Invaders', 'EFA4321098765', TO_DATE('2019-11-23', 'YYYY-MM-DD'), 'Action', 69.99, 'PS', 8, 86);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (9, 'City Builder', 'GHZ0987654321', TO_DATE('2018-05-14', 'YYYY-MM-DD'), 'Strategy', 39.99, 'PC', 9, 33);

INSERT INTO Game_Titles (Game_ID, Name, Serial_Code, Release_Date, GENRES, Price, Gaming_platform, Age_rating, Region_Country_Code)
VALUES (10, 'Football Manager', 'IJQ8765432109', TO_DATE('2022-03-22', 'YYYY-MM-DD'), 'Sports', 29.99, 'Switch', 10, 39);
COMMIT;


-- Inserting records into Customer_Rating table
INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (1, 1, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 5, 'Great game!', 1);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (2, 2, TO_DATE('2022-09-15', 'YYYY-MM-DD'), 4, 'Very enjoyable.', 2);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (3, 3, TO_DATE('2021-12-20', 'YYYY-MM-DD'), 3, 'Average.', 3);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (4, 4, TO_DATE('2020-07-25', 'YYYY-MM-DD'), 2, 'Not great.', 4);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (5, 5, TO_DATE('2019-04-30', 'YYYY-MM-DD'), 1, 'Terrible game.', 5);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (6, 6, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 4, 'Good game!', 6);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (7, 7, TO_DATE('2021-09-15', 'YYYY-MM-DD'), 5, 'Amazing adventure.', 7);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (8, 8, TO_DATE('2020-12-20', 'YYYY-MM-DD'), 2, 'Too difficult.', 8);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (9, 9, TO_DATE('2019-07-25', 'YYYY-MM-DD'), 3, 'Not bad.', 9);

INSERT INTO Customer_Rating (Rating_ID, Customers_Users_ID, Date_Of_review, Rating_points, Comments, Game_Titles_Game_ID)
VALUES (10, 10, TO_DATE('2022-04-30', 'YYYY-MM-DD'), 5, 'Fantastic!', 1);
COMMIT;

-- Inserting records into Game_Development table
INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (1, 1);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (2, 2);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (3, 3);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (4, 4);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (5, 5);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (6, 6);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (7, 7);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (8, 8);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (9, 9);

INSERT INTO Game_Development (Developers_Users_ID, Game_Titles_Game_ID)
VALUES (10, 10);
COMMIT;

-- Inserting records into Game_Categories table
INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (1, 'Action Games', '3D', 'Action');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (2, 'Adventure Games', '3D', 'Adventure');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (3, 'Role-Playing Games', '3D', 'RPG');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (4, 'Strategy Games', '2D', 'Strategy');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (5, 'Sports Games', '3D', 'Sports');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (6, 'Puzzle Games', '2D', 'Puzzle');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (7, 'Simulation Games', '3D', 'Simulation');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (8, 'Horror Games', '3D', 'Horror');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (9, 'Racing Games', '3D', 'Racing');

INSERT INTO Game_Categories (Category_ID, Name, Type, Genre)
VALUES (10, 'Fighting Games', '3D', 'Fighting');
COMMIT;

-- Inserting records into Game_Lists table
INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (1, 1);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (2, 2);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (3, 3);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (4, 4);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (5, 5);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (6, 6);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (7, 7);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (8, 8);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (9, 9);

INSERT INTO Game_Lists (Game_Titles_Game_ID, Game_Categories_Category_ID)
VALUES (10, 10);
COMMIT;