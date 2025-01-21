/* And 
	OR*/


select * from Employee
where (name = 'Joe' and salary>80000) or (name = 'Sam' and salary<80000)
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade CHAR(1),
    City VARCHAR(50)
);
INSERT INTO Students (StudentID, Name, Age, Grade, City) VALUES
(1, 'Alice', 20, 'A', 'New York'),
(2, 'Bob', 22, 'B', 'Chicago'),
(3, 'Charlie', 19, 'C', 'New York'),
(4, 'Diana', 21, 'A', 'Boston'),
(5, 'Eve', 20, 'B', 'Chicago'),
(6, 'Frank', 23, 'C', 'Boston');

/*Name  City
Alice  New York
Eve  Chicago*/


select name,City from Students
where (Grade='A' or City='Chicago') and age<=21

/*Derived Tables(subquery,cte) and Temp Tables*/
select max(cnt) from (select customer_number,count(customer_number) cnt from Orders group by customer_number) table2
select * from (select customer_number,count(customer_number) cnt from Orders group by customer_number) Table1
where cnt=(select max(cnt) from (select customer_number,count(customer_number) cnt from Orders group by customer_number) table2)


select customer_number,COUNT(customer_number) cnt from Orders
group by customer_number


;with Table1 as(
select customer_number,count(customer_number) cnt from Orders group by customer_number),cte2 as(
select * from table1)


select * from cte2




CREATE TABLE #Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade CHAR(1),
    City VARCHAR(50)
);
INSERT INTO #Students (StudentID, Name, Age, Grade, City) VALUES
(1, 'Alice', 20, 'A', 'New York'),
(2, 'Bob', 22, 'B', 'Chicago'),
(3, 'Charlie', 19, 'C', 'New York'),
(4, 'Diana', 21, 'A', 'Boston'),
(5, 'Eve', 20, 'B', 'Chicago'),
(6, 'Frank', 23, 'C', 'Boston');


select * from Students