create database college;
use college;
create table student_details(
Student_ID int,
FullName varchar(50),
Dept varchar(50),
Gender varchar(50),
Age int,
Year_of_Add int);
insert into student_details(Student_ID, FullName, Dept, Gender, Age, Year_of_Add) values
(1001, "Rohit Sharma", "Computer Engg", "Male", 18,2018),
(1002, "Virat Kohli", "Electronics Engg", "Male", 19,2019),
(1003, "Smriti Patel", "Electrical Engg", "Female", 19,2019),
(1004, "M.S Dhoni", "Computer Engg", "Male", 18, 2018),
 (1005, "Priya Sethi", "Electronics Engg", "Female", 20, 2019),
 (1006, "Divya Kumari", "Electronics Engg", "Female", 19, 2020),
 (1007, "Rahul Patel" , "Electrical Engg", "Male", 20, 2020),
 (1008, "Snehal Thakur", "Computer Engg", "Female", 19,2019),
 (1009, "Kavita Shah", "Computer Engg", "Female", 18, 2019),
 (1010, "Sunil Parmar", "Mech Engg", "Male", 19,2019);
 alter table student_details drop column Year_of_Add;
 alter table student_details drop column Dept;
 
 create table Add_details(
 Student_ID int,
 Year_of_Add int,
 Dept varchar(50),
 Status_of_fees varchar(30));
 insert into Add_details(Student_ID, Year_of_Add, Dept, Status_of_fees) values
 (1001, 2018 , "Computer Engg", "Paid"),
 (1002, 2019 , "Electronics Engg", "Paid"),
 (1003, 2019, "Electronics Engg", "Paid"),
 (1004, 2018, "Computer Engg", "Paid"),
 (1005, 2020, "Electrical Engg", "Paid"),
 (1006, 2019, "Computer Engg", "Not Paid"),
 (1007, 2018, "Electrical Engg", "Paid"),
 (1008, 2020, "Electronics Engg", "Paid"),
 (1009, 2019, "Computer Engg", "Paid"),
 (1010, 2018, "Mech Engg", "Not Paid");
 
 create table clg_emp_details(
 Emp_ID int,
 Emp_Name varchar(50),
 Dept varchar(50),
 Designation varchar (50),
 yrs_of_exp int);
 insert into clg_emp_details(Emp_ID, Emp_Name, Dept, Designation, yrs_of_exp) values
 (01, "Rohan Shetty", "Computer Engg", "Sr.Faculty", 10),
 (02, "Sunil Roy", "Electronics Engg", "Sr.Faculty", 9),
 (03, "Sujoy Mishra", "Computer Engg", "Jr.Faculty", 5),
 (04, "Amit Kumar", "Electrical Engg", "Jr.Faculty", 6),
 (05, "Kirti Jaiswal" , "Electronics Engg", "Sr.Faculty", 8),
 (06, "Preeti Kapoor", "Electrical Engg", "HOD", 15),
 (07, "Amar Patil", "Electrical Engg", "Sr.Faculty", 10),
 (08, "Chetan Shetty", "Mech Engg", "Sr.Faculty", 8),
 (09, "Karishma Patel", "Computer Engg", "HOD", 13),
 (10, "Sumit Kelkar","Electronics Engg", "HOD", 15);
 
 create table Placement_details(
 Student_ID int,
 Criteria_Percent decimal,
 Company_Name varchar(50),
 Package_in_lpa decimal,
 Status_placement varchar(50));
 insert into Placement_details(Student_ID, Criteria_Percent, Company_Name, Package_in_lpa, Status_placement) values
 (1001, 70, "Accenture", 5, "Placed"),
 (1002, 58, NULL, NULL, "Not Placed"),
 (1003, 75, "Cognizant", 6, "Placed"),
 (1004, 77, NULL , NULL , "Not Placed"),
 (1005, 68, "TCS", 3.5, "Placed"),
 (1006, 75.3, "Infy", 4, "Placed"),
 (1007, 72, NULL, NULL, "Not Placed"),
 (1008, 65, "Cognizant", 5.3, "Placed"),
 (1009, 70, "Accenture", 4.5, "Placed"),
 (1010, 65, "TCS", 4, "Placed");
 
select * from student_details;
select * from Add_details;
select * from clg_emp_details;
select * from Placement_details;
select Student_ID from Placement_details where Status_Placement= "Not Placed";
select Student_ID, Company_name from Placement_details where package_in_lpa >4;
select Student_ID,status_placement from Placement_details where company_name is NULL;
select max(package_in_lpa) from placement_details;
select * from student_details where FullName=(select Status_Placement from Placement_details);
select student_details.Student_ID, Add_details.Status_of_fees, student_details.Gender from student_details INNER JOIN Add_details ON student_details.Student_ID=Add_details.Student_ID;



 
 
 
 
 

