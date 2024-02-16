 Insert into EmployeeInfo values
(1001, 'Jonh Datagin', '1998-06-13', 'Bitcoin street UK'),
(1002, 'Victor Victory', '1999-04-08', 'ABC Avenue US'),
(1003, 'Peter Ginn', '1995-08-15', 'Obalende street LAG'),
(1004, 'Tina Tino', '1997-12-17', 'Bitcoin street UK'),
(1005, 'Yusuf Ahmed', '1989-03-24', 'Able street UK'),
(1006, 'Christiana Ebube', '1991-08-12', 'Bitcoin Avenue Germany'),
(1007, 'Jonh Datagin', '1990-09-23', 'Bitcoin street UK')

select * from EmployeeInfo
where HomeAddress = 'Bitcoin street UK'

SELECT TOP 3* FROM EmployeeInfo

SELECT MIN(EmployeeId) AS MinID FROM EmployeeInfo


select * from EmployeeInfo

SELECT HomeAddress FROM EmployeeInfo
WHERE HomeAddress <> 'Bitcoin street UK'

