-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-06-26 16:17:14.512

-- tables
-- Table: Age_rating
CREATE TABLE Age_rating (
    ID integer  NOT NULL,
    Type varchar2(7)  NOT NULL,
    Age_limit integer  NULL,
    CONSTRAINT Age_rating_pk PRIMARY KEY (ID)
) ;

-- Table: Customer_Rating
CREATE TABLE Customer_Rating (
    Rating_ID integer  NOT NULL,
    Customers_Users_ID integer  NOT NULL,
    Date_Of_review date  NOT NULL,
    Rating_points varchar2(5)  NOT NULL,
    Comments varchar2(200)  NULL,
    Game_Titles_Game_ID integer  NOT NULL,
    CONSTRAINT Customer_Rating_pk PRIMARY KEY (Rating_ID)
) ;

-- Table: Customers
CREATE TABLE Customers (
    Users_ID integer  NOT NULL,
    Surname varchar2(15)  NOT NULL,
    Region varchar2(4)  NOT NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (Users_ID)
) ;

-- Table: Developers
CREATE TABLE Developers (
    Users_ID integer  NOT NULL,
    Founding_Date date  NOT NULL,
    Employee_Count integer  NOT NULL,
    Status char(1)  NOT NULL,
    Publisher integer  NULL,
    CONSTRAINT Status_Check CHECK (Status In ('A','D')),
    CONSTRAINT Developers_pk PRIMARY KEY (Users_ID)
) ;

-- Table: Game_Categories
CREATE TABLE Game_Categories (
    Category_ID integer  NOT NULL,
    Name varchar2(30)  NOT NULL,
    Type varchar2(30)  NOT NULL,
    Genre varchar2(30)  NOT NULL,
    CONSTRAINT Game_Categories_pk PRIMARY KEY (Category_ID)
) ;

-- Table: Game_Development
CREATE TABLE Game_Development (
    Developers_Users_ID integer  NOT NULL,
    Game_Titles_Game_ID integer  NOT NULL,
    CONSTRAINT Game_Development_pk PRIMARY KEY (Developers_Users_ID,Game_Titles_Game_ID)
) ;

-- Table: Game_Lists
CREATE TABLE Game_Lists (
    Game_Titles_Game_ID integer  NOT NULL,
    Game_Categories_Category_ID integer  NOT NULL,
    CONSTRAINT Game_Lists_pk PRIMARY KEY (Game_Titles_Game_ID,Game_Categories_Category_ID)
) ;

-- Table: Game_Titles
CREATE TABLE Game_Titles (
    Game_ID integer  NOT NULL,
    Name varchar2(20)  NOT NULL,
    Serial_Code char(13)  NOT NULL,
    Release_Date date  NOT NULL,
    Genres varchar2(25)  NOT NULL,
    Price number(4,2)  NOT NULL,
    Gaming_platform varchar2(10)  NOT NULL,
    Age_rating integer  NOT NULL,
    Region_Country_Code integer  NOT NULL,
    CONSTRAINT Game_Titles_pk PRIMARY KEY (Game_ID)
) ;

-- Table: Region
CREATE TABLE Region (
    Country_Name varchar2(20)  NOT NULL,
    Country_Code integer  NOT NULL,
    Restriction char(1)  NOT NULL,
    CONSTRAINT Region_Check CHECK (Restriction In ('Y','N')),
    CONSTRAINT Region_pk PRIMARY KEY (Country_Code)
) ;

-- Table: Users
CREATE TABLE Users (
    ID integer  NOT NULL,
    Name varchar2(20)  NOT NULL,
    Email varchar2(35)  NOT NULL,
    Date_of_registry date  NOT NULL,
    Address varchar2(30)  NOT NULL,
    Date_of_Birth date  NOT NULL,
    CONSTRAINT Users_pk PRIMARY KEY (ID)
) ;

-- foreign keys
-- Reference: Customer_Rating_Customers (table: Customer_Rating)
ALTER TABLE Customer_Rating ADD CONSTRAINT Customer_Rating_Customers
    FOREIGN KEY (Customers_Users_ID)
    REFERENCES Customers (Users_ID);

-- Reference: Customer_Rating_Game_Titles (table: Customer_Rating)
ALTER TABLE Customer_Rating ADD CONSTRAINT Customer_Rating_Game_Titles
    FOREIGN KEY (Game_Titles_Game_ID)
    REFERENCES Game_Titles (Game_ID);

-- Reference: Customers_Users (table: Customers)
ALTER TABLE Customers ADD CONSTRAINT Customers_Users
    FOREIGN KEY (Users_ID)
    REFERENCES Users (ID);

-- Reference: Developers (table: Game_Development)
ALTER TABLE Game_Development ADD CONSTRAINT Developers
    FOREIGN KEY (Developers_Users_ID)
    REFERENCES Developers (Users_ID);

-- Reference: Developers_Users (table: Developers)
ALTER TABLE Developers ADD CONSTRAINT Developers_Users
    FOREIGN KEY (Users_ID)
    REFERENCES Users (ID);

-- Reference: Game_Development_Game_Titles (table: Game_Development)
ALTER TABLE Game_Development ADD CONSTRAINT Game_Development_Game_Titles
    FOREIGN KEY (Game_Titles_Game_ID)
    REFERENCES Game_Titles (Game_ID);

-- Reference: Game_Lists_Game_Categories (table: Game_Lists)
ALTER TABLE Game_Lists ADD CONSTRAINT Game_Lists_Game_Categories
    FOREIGN KEY (Game_Categories_Category_ID)
    REFERENCES Game_Categories (Category_ID);

-- Reference: Game_Lists_Game_Titles (table: Game_Lists)
ALTER TABLE Game_Lists ADD CONSTRAINT Game_Lists_Game_Titles
    FOREIGN KEY (Game_Titles_Game_ID)
    REFERENCES Game_Titles (Game_ID);

-- Reference: Game_Titles_Age_rating (table: Game_Titles)
ALTER TABLE Game_Titles ADD CONSTRAINT Game_Titles_Age_rating
    FOREIGN KEY (Age_rating)
    REFERENCES Age_rating (ID);

-- Reference: Game_Titles_Region (table: Game_Titles)
ALTER TABLE Game_Titles ADD CONSTRAINT Game_Titles_Region
    FOREIGN KEY (Region_Country_Code)
    REFERENCES Region (Country_Code);

-- Reference: Publishers (table: Developers)
ALTER TABLE Developers ADD CONSTRAINT Publishers
    FOREIGN KEY (Publisher)
    REFERENCES Developers (Users_ID);

-- End of file.

