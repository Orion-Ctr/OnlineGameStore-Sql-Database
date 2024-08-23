--5 SELECT queries using WHERE--

-- 1. Select all details of games that have a price greater than 50
SELECT *
FROM Game_Titles
WHERE Price > 50;

-- 2. Select all customers from the 'EU' region
SELECT *
FROM Customers
WHERE Region = 'EU';

-- 3. Select all reviews for the game with the ID 3
SELECT *
FROM Customer_Rating
WHERE Game_Titles_Game_ID = 3;

-- 4. Select all developers who have 'A' status
SELECT *
FROM Developers
WHERE Status = 'A';

-- 5. Select all game titles that were released before 2022
SELECT *
FROM Game_Titles
WHERE Release_Date < TO_DATE('2022-01-01', 'YYYY-MM-DD');


--5 SELECT queries that require joining tables (JOIN)--


-- 6. Select the names of customers along with the names of the games they reviewed
SELECT c.Name, g.Name AS Game_Name
FROM Customers cu
JOIN Users c ON cu.Users_ID = c.ID
JOIN Customer_Rating cr ON cu.Users_ID = cr.Customers_Users_ID
JOIN Game_Titles g ON cr.Game_Titles_Game_ID = g.Game_ID;

-- 7. Select the details of games along with their age rating type
SELECT g.Name, g.Genres, a.Type AS Age_Rating_Type
FROM Game_Titles g
JOIN Age_rating a ON g.Age_rating = a.ID;

-- 8. Select the details of developers along with the details of their publishers
SELECT d.Users_ID, d.Founding_Date, p.Users_ID AS Publisher_ID, p.Founding_Date AS Publisher_Founding_Date
FROM Developers d
JOIN Developers p ON d.Publisher = p.Users_ID;


-- 9. Select the genre and name of game titles along with the region they belong to
SELECT g.Name, g.Genres, r.Country_Name
FROM Game_Titles g
JOIN Region r ON g.Region_Country_Code = r.Country_Code;

-- 10. Select the region of customers and their names
SELECT c.Region, u.Name
FROM Customers c
JOIN Users u ON c.Users_ID = u.ID;


--5 SELECT queries using GROUP BY + aggregate function like COUNT or MAX--


-- 11. Count the number of games in each genre
SELECT Genres, COUNT(*) AS NumberOfGames
FROM Game_Titles
GROUP BY Genres;

-- 12. Count the number of customers in each region
SELECT Region, COUNT(*) AS NumberOfCustomers
FROM Customers
GROUP BY Region;

-- 13. Find the average rating points for each game
SELECT Game_Titles_Game_ID, AVG(Rating_points) AS AverageRating
FROM Customer_Rating
GROUP BY Game_Titles_Game_ID;

-- 14. Find the maximum employee count for developers based on their status
SELECT Status, MAX(Employee_Count) AS MaxEmployeeCount
FROM Developers
GROUP BY Status;

-- 15. Count the number of games developed by each developer
SELECT Developers_Users_ID, COUNT(*) AS NumberOfGames
FROM Game_Development
GROUP BY Developers_Users_ID;

-- 3 SELECT queries using subquery, at least 1 of them being a correlated subquery --



-- 16. Select the names of games that have received less than 2 reviews from customers
SELECT Name
FROM Game_Titles
WHERE Game_ID IN (
    SELECT Game_Titles_Game_ID
    FROM Customer_Rating
    GROUP BY Game_Titles_Game_ID
    HAVING COUNT(*) < 2
);

-- 17. Select the customers who have given a rating of 5 points
SELECT Name
FROM Users
WHERE ID IN (
    SELECT Customers_Users_ID
    FROM Customer_Rating
    WHERE Rating_points = '5'
);

-- 18. Select the names of games and the maximum rating each game has received
SELECT g.Name,
       (SELECT MAX(cr.Rating_points)
        FROM Customer_Rating cr
        WHERE cr.Game_Titles_Game_ID = g.Game_ID) AS MaxRating
FROM Game_Titles g;
