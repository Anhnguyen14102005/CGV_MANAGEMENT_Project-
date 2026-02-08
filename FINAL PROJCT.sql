CREATE DATABASE FIANL_PROJECT

Create table Movies (
Movies_ID VARCHAR(20)  NOT NULL primary key,
Movies_Name VARCHAR (50),
Day_of_release DATE NOT NULL,
Genre VARCHAR (20) NOT NULL,
Nation VARCHAR (20),
Main_character VARCHAR (50),
Revenue DECIMAL (10,2),
Feedback VARCHAR (20),
);

CREATE TABLE Room (
Seat_ID VARCHAR (20) PRIMARY KEY NOT NULL,
Room_ID VARCHAR(20),
Type_of_seat VARCHAR(20) 
);

CREATE TABLE Discount (
Discount_ID VARCHAR(20) PRIMARY KEY NOT NULL,
Discount_Name VARCHAR(20),
Member_card VARCHAR(20) 
);

Create table Staff (
Staff_ID INT NOT NULL primary key,
Staff_Name VARCHAR (20) NOT NULL,
Telephone CHAR (15),
Address VARCHAR (20),
Seat_ID VARCHAR (20) foreign key references Room (Seat_ID),
Salary DECIMAL (10,2),
Role VARCHAR (20),
Start_working_day DATE,
Work_hour_per_month INT,
Status VARCHAR (20)
);

CREATE TABLE Customer (
Customer_ID VARCHAR(20) PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
Age INT,
Gender VARCHAR(10),
Telephone CHAR(15),
Address VARCHAR(50),
Discount_ID VARCHAR(20),
Feedback VARCHAR(25),
FOREIGN KEY (Discount_ID) REFERENCES Discount (Discount_ID) 
);

Create table Orders (
Order_ID INT NOT NULL primary key,
Category VARCHAR (20),
Prices DECIMAL (10,2),
Quantity INT,
Order_Date DATE,
Customer_ID VARCHAR (20) foreign key references Customer (Customer_ID),
Staff_ID INT foreign key references Staff (Staff_ID)
);

CREATE TABLE Reservation ( 
Reservation_ID VARCHAR(20) PRIMARY KEY,
Film_ID VARCHAR(20),
FOREIGN KEY (Film_ID) REFERENCES Movies  (Movies_ID),
Price DECIMAL (10,2),
Date_and_time DATETIME,
Payment_method VARCHAR(20),
Seat_ID VARCHAR(20),
FOREIGN KEY (Seat_ID) REFERENCES Room (Seat_ID),
Customer_ID VARCHAR(20),
FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID),
Staff_ID INT,
FOREIGN KEY (Staff_ID) REFERENCES Staff (Staff_ID)
);

Insert into Movies (Movies_ID, Movies_Name, Day_of_release, Genre, Nation, Main_character, Revenue, Feedback) 
Values 
('SO987', 'Emotional Piece Piece 2', '14-JUN-2024', 'Cartoon', 'America', 'Amy Poehler', 46732000, 'Very good'), 
('SO994', 'Grandfathers Investment', '07-JUN-2024', 'Mentality', 'Thailand', 'Billkin', 6854000, 'Very good'),
('SO779', 'Cuu Long Citadel Camp: Surrounding The Citadel', '13-JUN-2024', 'Action', 'China', 'Co Thien Lac', 17623000, 'Bad'), 
('SO353', 'DORAEMON', '24-MAY-2024', 'Cartoon', 'Japan', 'Doraemon', 32581054, 'Very good'), 
('SO335', 'WATCHERS', '15-JUN-2024', 'Horror', 'America', 'Dakota Fanning', 9425052, 'Good'), 
('SO463', 'Life-Swalking Trap', '14-JUN-2024', 'Mentality', 'Korea', 'Gang Dong-won', 35254825, 'Bad'), 
('SO644', 'Super Fat Cat', '31-MAY-2024', 'Cartoon', 'America', 'Hannah Waddingham', 41525457, 'Good'), 
('SO643', 'EXORCTOR', '15-JUN-2024', 'Horror', 'America', 'Russell Crowe', 33262054, 'Good'), 
('SO665', 'Bad Boys: Play Or Get Bored', '07-JUN-2024', 'Action', 'America', 'Will Smith', 28265105, 'Bad'),
 ('SO981', 'Dieu uoc so 7', '26-APR-2024', 'Mentality', 'Vietnam', 'Thanh Hien', 52659058, 'Very Good'), 
('SO456', 'Totto-Chan: The Little Girl At The Window', '31-MAY-2024', 'Cartoon', 'Japan', 'Liliana Ohno', 5866205, 'Good'), 
('SO365', 'Womens Souls 2: Revival Ritual', '08-JUN-2024', 'Horror', 'Indonesia', 'Aulia Sarah', 30548920, 'Good'), 
('SO123', 'Mong Vuot', '07-JUN-2024', 'Horror', 'Vietnam', 'Tuan Tran', 26920062, 'Bad'), 
('SO398', 'Stalker: The Perfect Crime', '30-MAY-2024', 'Mentality', 'Korea', 'Shin Hye-sun', 62058054, 'Good'),
('SO901', 'Furiosa: A Story From Mad Max', '24-MAY-2024', 'Adventure', 'America', 'Anya Taylor-Joy', 8520506, 'Bad'), 
('SO023', 'Weird Temple 4', '27-MAY-2024', 'Horror', 'Thailand', 'Bhuripat Vejvongsatechawat', 82005203, 'Very good'), 
('SO852', 'Haikyu!!: Battle Of The Scrap Yard', '17-MAY-2024', 'Cartoon', 'Japan', '2D', 15055286, 'Bad'), 
('SO159', 'Planet Of The Monkeys: New Kingdom', '10-MAY-2024', 'Adventure', 'America', 'Owen Teague', 62520582, 'Very Good'), 
('SO943', 'The Constraint: The Punisher', '26-APR-2024', 'Crime', 'Korea', 'Ma Dong-seok', 72305202, 'Very Good'),
('SO347', 'Mua he dep nhat', '17-JUN-2024', 'Romantic', 'Vietnam', 'Do Khanh Van', 1325205, 'Good')

INSERT INTO Room (Seat_ID, Room_ID, Type_of_seat)
VALUES
('SA01', 'PH1A', 'Standard'),
('SA02', 'PH1A', 'Standard'),
('SB01', 'PH2A', 'Sweet box'),
('SH01', 'PH3A', 'VIP'),
('SH02', 'PH3A', 'Standard'),
('SB02', 'PH2A', 'Standard'),
('SA03', 'PH1A', 'Standard'),
('SH03', 'PH3A', 'Sweetbox'),
('SB03', 'PH2A', 'VIP'),
('SH04', 'PH3A', 'VIP'),
('SH05', 'PH3A', 'Standard'),
('SA04', 'PH1A', 'VIP'),
('SB04', 'PH2A', 'Standard'),
('SA05', 'PH1A', 'Sweetbox'),
('SH06', 'PH3A', 'Sweetbox'),
('SH07', 'PH3A', 'VIP'),
('SB05', 'PH2A', 'Standard'),
('SH08', 'PH3A', 'Standard'),
('SH09', 'PH3A', 'Sweetbox'),
('SB06', 'PH2A', 'VIP')

INSERT INTO Discount (Discount_ID, Discount_Name, Member_Card)
VALUES
('DS001', '10%', 'Silver'),
('DS002', '20%', 'Gold'),
('DS003', '40%', 'Diamond'),
('DS004', '60%', 'Special')

Insert into Staff (Staff_ID, Seat_ID, Staff_Name, Telephone, Address, Salary, Role, Start_working_day, Work_hour_per_month, Status)
Values
(240601, 'SA01', 'Nguyen Van A', 0352548925, 'Ba Dinh', 7000000, 'Ticket control', '15-MAY-2023', 55, 'Still working'),
(240602, 'SA02', 'Tran Thi B', 0852005924, 'Dong Da', 10000000, 'Shift Manager', '10-JUN-2023', 60, 'Still working'),
(240603, 'SB01', 'Le Quang C', 0950050506, 'Tay Ho', 15000000, 'Theater Manager', '01-JAN-2022', 70, 'Still working'),
(240604, 'SH01', 'Tran Thi B', 0810222580, 'Long Bien', 7000000, 'Ticket seller', '07-JAN-2022', NULL, 'Retired'),
(240605, 'SH02', 'Pham Minh D', 0354050585, 'Nam Tu Liem', 7000000, 'Ticket control', '20-MAY-2023', 50, 'Still working'),
(240606, 'SB02', 'Do Thi E', 0741025893, 'Bac Tu Liem', 8000000, 'Customer care', '23-MAR-2023', NULL, 'Retired'),
(240607, 'SA03', 'Hoang Van F', 0235874139, 'Cau Giay', 10000000, 'Shift Manager', '25-APR-2022', 57, 'Still working'),
(240608, 'SH03', 'Vu Thi G', 0658741235, 'Dong Da', 8000000, 'Customer care', '05-MAR-2022', 53, 'Still working'),
(240609, 'SB03', 'Ngo Thanh H', 0259314687, 'Hoang Mai', 7000000, 'Ticket control', '17-SEP-2022', 45, 'Still working'),
(240610, 'SH04', 'Bui Thi I', 0782364021, 'Tay Ho', 7000000, 'Ticket control', '29-OCT-2023', 50, 'Still working'),
(240611, 'SH05', 'Dinh Quang K', 0159328756, 'Hoan Kiem', 7000000, 'Ticket seller', '09-MAR-2021', 53, 'Still working'),
(240612, 'SA04', 'Ly Van L', 0328456971, 'Ba Dinh', 9000000, 'Technical staff',  '29-SEP-2022', NULL, 'Retired'),
(240613, 'SB04', 'Truong Thi M', 0589321459, 'Hai Ba Trung', 9000000, 'Technical staff', '23-FEB-2021', 60, 'Still working'),
(240614, 'SA05', 'Nguyen Thi O', 0845621795, 'Bac Tu Liem', 7000000, 'Ticket control', '14-MAY-2023', 55, 'Still working'),
(240615, 'SH06', 'Tran Van P', 0486236749, 'Cau Giay', 6000000, 'Theater cleaning', '05-NOV-2021', 70, 'Still working'),
(240616, 'SH07', 'Le Thi Q', 0752036975, 'Thanh Xuan', '10000000', 'HR manager', '02-MAR-2022', 65, 'Still working'),
(240617, 'SB05', 'Pham Quang R', 0147896325, 'Ha Dong', 7000000, 'Ticket control', '26-DEC-2023', 50, 'Still working'),
(240618, 'SH08', 'Do Van S', 0365478925, 'Hoan Kiem', 7000000, 'Ticket control', '20-APR-2022', 49, 'Still working'),
(240619, 'SH09', 'Hoang Thi T', 0987563214, 'Nam Tu Liem', 7000000, 'Ticket seller', '19-JUN-2021', 51, 'Still working'),
(240620, 'SB06', 'Vu Van U', 0782364102, 'Thanh Xuan', 6000000, 'Theater cleaning', '21-MAR-2022', 65, 'Still working')

INSERT INTO Customer (Customer_ID, Name, Age, Gender, Telephone, Address, Discount_ID, Feedback)
VALUES
('SB0001', 'Winston', 22, 'M', '09854600432', '206 Fondren, Houston, LD', NULL, 'Good'),
('SB0002', 'Anh', 25, 'F', '07725814763', 'An Tien, My Duc, Hanoi', 'DS002', 'Good'),
('SB0003', 'Bich', 25, 'F', '07512458969', 'Te Tieu, My Duc, Hanoi', NULL, 'Very good'),
('SB0004', 'Binh', 45, 'F', '00822536178', '36 Me Tri Thuong, Nam Tu Liem', NULL, 'Very good'),
('SB0005', 'Chau', 35, 'M', '0291248964', 'Tay Ho, HN', 'DS001', 'Bad'),
('SB0006', 'Chi', 22, 'F', '00822544166', '291 Phu My, My Dinh, HN', NULL, 'Good'),
('SB0007', 'Doanh', 45, 'M', '04425874365', 'My Dinh 2, HN', NULL, 'Good'),
('SB0008', 'Sundariya', 55, 'M', '02912258964', 'Ngo 46, Me Tri, Nam Tu Liem, HN', 'DS001', 'Very good'),
('SB0009', 'Lam', 35, 'F', '07745285348', '58 Me Tri Ha, Nam Tu Liem, HN', 'DS002', 'Very good'),
('SB0010', 'Will', 24, 'M', '09854622432', '236 Fondren, Houston, LD', 'DS003', 'Good'),
('SB0011', 'Binh', 43, 'M', '00822536178', '49a Me Tri Ha, Nam Tu Liem, HN', NULL, 'Bad'),
('SB0012', 'Hoa', 32, 'F', '07822255588', '3 Fire Oak, Humble, HN', 'DS004', 'Good'),
('SB0013', 'Chi', 19, 'F', '07712346674', '55a Rice, Houston, HT', NULL, 'Good'),
('SB0014', 'Zelaya', 33, 'M', '00822536178', '22a Stone, Houston, HT', 'DS001', 'Very good'),
('SB0015', 'Sundariya', 24, 'F', '029123568964', 'Ngo 82, Me Tri, Nam Tu Liem, HN', 'DS002', 'Bad'),
('SB0016', 'Linh', 22, 'F', '07745625874', 'Tay Mo, Nam Tu Liem, HN', NULL, 'Good'),
('SB0017', 'Ly', 38, 'M', '04452981425', 'Ngo 14, Me Tri, HN', NULL, 'Good'),
('SB0018', 'Wins', 35, 'M', '09854637432', '14 Fondren, Houston, TH', NULL, 'Bad'),
('SB0019', 'Cook', 22, 'M', '07512458969', 'Kim Lien, Castle, Spring, TH', 'DS003', 'Very good'),
('SB0020', 'Ravindran', 34, 'M', '02912358964', 'Dallas, Houston, HL', NULL, 'Good')

Insert into Orders (Order_ID, Category, Prices, Quantity, Order_Date, Customer_ID, Staff_ID)
Values
(062401, 'Popcorn', 50000, 2, '10-MAY-2024', 'SB0001', 240604),
(062402, 'Coca', 20000, 4, '15-MAY-2024', 'SB0002', 240611),
(062403, 'Latte', 35000, 1, '12-JUN-2024', 'SB0019', 240619),
(062404, 'Combo popcorn-cola', 60000, 3, '04-APR-2024', 'SB0001', 240619),
(062405, 'Combo popcorn-latte', 70000, 5, '19-JUN-2024', 'SB0005', 240611),
(062406, 'Coca', 20000, 2, '09-MAY-2024', 'SB0006', 240619),
(062407, 'Coca', 20000, 2, '20-APR-2024', 'SB0020', 240602),
(062408, 'Latte', 35000, 1, '01-JUN-2024', 'SB0008', 240611),
(062409, 'Combo popcorn-cola', 60000, 3, '05-MAY-2024', 'SB0009', 240611),
(062410, 'Combo popcorn-latte',70000, 4, '25-APR-2024', 'SB0010', 240619),
(062411, 'Combo popcorn-cola', 60000, 2, '10-JUN-2024', 'SB0011', 240604),
(062412, 'Popcorn', 50000, 5, '02- JUN-2024', 'SB0016', 240611),
(062413, 'Coca', 20000, 1, '06-MAY-2024', 'SB0013', 240619),
(062414, 'Coca', 20000, 1, '04-APR-2024', 'SB0005', 240604),
(062415, 'Latte', 35000, 3, '2-MAY-2024', 'SB0010', 240611),
(062416, 'Combo popcorn-latte',70000, 7, '23-JUN-2024', 'SB0016', 240619),
(062417, 'Popcorn', 50000, 2, '04-APR-2024', 'SB0017', 240604),
(062418, 'Latte', 35000, 4, '12-MAY-2024', 'SB0014', 240611),
(062419, 'Popcorn', 50000, 5, '27-JUN-2024', 'SB0019', 240604),
(062420, 'Latte', 35000, 1, '09-MAY-2024', 'SB0020', 240619)

INSERT INTO Reservation (Reservation_ID, Film_ID, Price, Date_and_time, Payment_method, Seat_ID, Customer_ID, Staff_ID)
VALUES
('GV00001', 'SO987', 50000, '2021-05-07 10:10', 'Cash', 'SA01', 'SB0001', '240601'),
('GV00002', 'SO994', 50000, '2021-05-03 9:30', 'Transfer', 'SA02', 'SB0002', '240605'),
('GV00003', 'SO779', 250000, '2021-05-06 10:10', 'Card', 'SB01', 'SB0003', '240609'),
('GV00004', 'SO779', 100000, '2021-05-06 10:10', 'Card', 'SH01', 'SB0004', '240614'),
('GV00005', 'SO987', 50000, '2021-05-07 10:10', 'Cash', 'SH02', 'SB0005', '240617'),
('GV00006', 'SO353', 50000, '2021-05-04 10:10', 'Transfer', 'SB02', 'SB0006', '240618'),
('GV00007', 'SO335', 50000, '2021-05-04 16:30', 'Transfer', 'SA03', 'SB0007', '240610'),
('GV00008', 'SO463', 250000, '2021-05-04 10:10', 'Transfer', 'SH03', 'SB0008', '240605'),
('GV00009', 'SO994', 100000, '2021-05-03 9:30', 'Cash', 'SB03', 'SB0009', '240614'),
('GV00010', 'SO463', 100000, '2021-05-03 13:30', 'Cash', 'SH04', 'SB0010', '240601'),
('GV00011', 'SO644', 100000, '2021-05-07 20:00', 'Card', 'SH05', 'SB0011', '240617'),
('GV00012', 'SO987', 100000, '2021-05-07 10:10', 'Transfer', 'SA04', 'SB0012', '240618'),
('GV00013', 'SO643', 50000, '2021-05-04 10:10', 'Card', 'SB04', 'SB0013', '240609'),
('GV00014', 'SO665', 250000, '2021-05-05 10:10', 'Cash', 'SA05', 'SB0014', '240610'),
('GV00015', 'SO987', 250000, '2021-05-07 10:10', 'Transfer', 'SH06', 'SB0015', '240601'),
('GV00016', 'SO981', 100000, '2021-05-03 10:00', 'Card', 'SH07', 'SB0016', '240609'),
('GV00017', 'SO994', 50000, '2021-05-03 9:30', 'Transfer', 'SB05', 'SB0017', '240617'),
('GV00018', 'SO456', 50000, '2021-05-05 21:00', 'Cash', 'SH08', 'SB0018', '240605'),
('GV00019', 'SO987', 250000, '2021-05-07 10:10', 'Transfer', 'SH09', 'SB0019', '240610'),
('GV00020', 'SO365', 100000, '2021-05-03 10:00', 'Cash', 'SB06', 'SB0001', '240618')


/* Select the top three highest-grossing moviesand arrange them in descending order:*/
select top (3)* from Movies
order by Revenue DESC, Movies_Name DESC;

/* Determine how many male and female customers have booked seats for each type of screening room.
Answer:  Use SUM to count the total number of customers using the CASE ... ELSE statement if 'M' and 'F' then set the value to 1 and count. 
Additionally, to determine the number of customers in each room, we must JOIN the 3 tables together Customer, Reservation, Room */
SELECT H.Room_ID,
SUM (CASE WHEN C.Gender = 'M' THEN 1 ELSE 0 END) as Male_Reservations, 
SUM (CASE WHEN C.Gender = 'F' THEN 1 ELSE 0 END) as Female_Reservations 
FROM Customer C 
JOIN Reservation R ON C.Customer_ID = R.Customer_ID 
JOIN Room H ON R.Seat_ID = H.Seat_ID 
GROUP BY H.Room_ID;

/* List the customers' names and the type of seats they chose for movie screenings in room 'PH3A' and calculate the total revenue for each type of seat in that room
Answer:  To calculate the total revenue generated by each customer for the different seat types in room 'PH3A, we must JOIN 3 tables: Customer, Reservation and Room to collect the necessary information. 
The GROUP BY clause returns the results by seat type and customer name, allowing you to see the total revenue each customer contributed to each seat type in room 'PH3A'.*/
SELECT C.Name, H.Type_of_seat, 
SUM(R.Price) as Total_Revenue 
FROM Customer C 
JOIN Reservation R ON C.Customer_ID = R.Customer_ID 
JOIN Room H ON R.Seat_ID = H.Seat_ID 
WHERE H.Room_ID = 'PH3A' 
GROUP BY H.Type_of_seat, C.Name;

/*  are the ages and genders of customers who saw Grandfather's Investment?
Answer: We join the Customer table, the Movie table, and also the Reservation table, 
and then we select the necessary columns with the condition is the movie’ name is Grandfather's Investment */

Select Customer.Name, Customer.Age, Customer.Gender, Reservation.Film_ID, Movies.Movies_Name from Reservation 
INNER JOIN Customer on Customer.Customer_ID = Reservation.Customer_ID
INNER JOIN Movies on Movies.Movies_ID = Reservation.Film_ID
where Movies_Name = 'Grandfathers Investment';

/*Which category in food and drink receives the highest sales and in which month?
Answer:  We use the expression Prices*Quantity to find the Total sales of each kind of category, 
then group by category to find out the one with the highest one.*/

SELECT Category, SUM(Prices * Quantity) AS TotalSales
  FROM Orders
  GROUP BY Category
  ORDER BY TotalSales DESC

/* Use total revenue (price * quantity) and sorted in descending order, if revenue is greater than the amount is 'DAT', 
if lower than the amount is 'KHONGDAT'. Output results: total revenue, total quantity, KPI
Answer:
- Use SUM function to calculate the total quantity and total revenue 
- Use a CASE statement to classify the total revenue (Price * quantity) from the Orders table into different performance categories as Key Performance Indicators (KPIs).
If the total amount is 500,000 or more it is classified as 'DAT' and if less than 500,000 it is classified as 'KHONGDAT'. 
If no condition is met, it defaults to 'Not Applicable', which is short for 'Not Applicable' '. */
 SELECT Category,
    SUM(quantity) AS total_quantity, 
    SUM(Prices * quantity) AS total_revenue,
     (CASE 
        WHEN SUM(Prices * quantity) >= 500000 THEN 'DAT'
        WHEN SUM(Prices * quantity) < 500000 THEN 'KHONGDAT'    
	 ELSE 'N/A'
    END) AS KPI
FROM Orders
GROUP BY Category
ORDER BY total_quantity DESC;

