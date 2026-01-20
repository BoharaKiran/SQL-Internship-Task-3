USE intern_training_db;
create table students4(
id int primary key auto_increment,
name varchar(50),
age int,
email varchar(100),
city varchar(50),
marks int,
course varchar(50),
joining_date date
);

INSERT INTO students4 (name, age, email, city, marks, course, joining_date) VALUES
('Ronit', 20, 'ronit@gmail.com', 'Mumbai', 85, 'BCA', '2024-01-10'),
('Anit', 22, 'anit@yahoo.com', 'Delhi', 72, 'BSc', '2023-12-05'),
('Kiran', 21, 'kiran@gmail.com', 'Pune', 90, 'BCA', '2024-02-12'),
('Amit', 23, NULL, 'Mumbai', 65, 'BCom', '2023-11-01'),
('Sneha', 20, 'sneha@gmail.com', 'Delhi', 88, 'BCA', '2024-01-20'),
('Rahul', 24, 'rahul@hotmail.com', 'Chennai', 55, 'BSc', '2023-10-15');

# WHERE clause
select * from students4
where age>21; 

select * from students4
where city='Mumbai';

#AND and OR Use
select * from students4
where age>21 and city='Delhi';

select * from students4
where city='Mumbai' or city='Delhi';

#using LIKE with wildcards % and _.
select * from students4
where name like 'R%';

select * from students4
where email like '%gmail.com';

select * from students4
where name like '_i%';

#using IN and BETWEEN
select * from students4
where city in('Mumbai','Pune');

SELECT * FROM students4
WHERE marks BETWEEN 70 AND 90;

#NULL values using IS NULL
SELECT * FROM students4
WHERE email IS NULL;

SELECT * FROM students4
WHERE email IS NOT NULL;

#using aliases.
SELECT 
    name AS StudentName,
    marks AS Score,
    city AS Location
FROM students4
WHERE marks > 80;


#real-life scenarios like email search.
SELECT * FROM students4
WHERE email LIKE '%@gmail%';
