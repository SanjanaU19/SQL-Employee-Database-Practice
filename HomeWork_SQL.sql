SELECT * FROM capgemini.employee;
USE capgemini;

# salary more than 20k
SELECT name FROM employee WHERE salary > 20000;

# salary = 51k
SELECT * FROM employee WHERE salary = 51000;

#name , experince whose age = 35
SELECT name,experince FROM employee 
WHERE age > 35;

# profile = dev
SELECT * FROM employee WHERE profile ='dev';

# profile = test
SELECT name FROM employee WHERE profile = 'test';

#  salary >= 25k
SELECT * FROM employee WHERE salary >= 25000;

# salary != 51k
SELECT name , emaill FROM employee WHERE salary != 51000;

# update salary by 10k where experince is less than 20 yrs
UPDATE employee SET salary = 10000 WHERE experince < 20;

# delete employee where experince is 21 yrs
DELETE FROM employee WHERE  id = 3;
SELECT * FROM employee;

# decrease salary of john by 21000
UPDATE employee SET salary = salary - 10000 WHERE id = 5;

# add branch_location 
ALTER TABLE employee ADD column branch_location VARCHAR(40);
SELECT * FROM employee;

# total salary of employee
SELECT SUM(salary) AS total_salary FROM employee;

# Max salary from employee WHERE profile = test
SELECT MAX(salary) AS maximun_salary FROM employee WHERE profile = 'test';

#  I want to get the average experience level of employees.
SELECT AVG(experince) AS avg_exp FROM employee;

#  I want to see the name of highest paid employee.
SELECT name , salary FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);

# As a user, I want to see the name and experience of lowest paid employee.
SELECT name , experince ,salary FROM employee 
WHERE salary = (SELECT MIN(salary) FROM employee);

# As a user I want check how many employees are working in company
SELECT COUNT(*) AS total_employee FROM employee;

# As a user I want to see those employee names who are from test profile and having salary more than 25K.
SELECT name , salary FROM employee WHERE profile = 'test' AND salary > 25000;

# I want to shift Radha on support profile.
UPDATE employee SET profile = 'support' WHERE id = 3;
SELECT * FROM employee;

# I want to get the second highest salary of employee.
SELECT DISTINCT salary FROM employee 
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

# I want to get the second lowest salary of employee
SELECT DISTINCT salary FROM employee 
ORDER BY salary ASC
LIMIT 1 OFFSET 1;

# I want to calculate the average salary of employees those are belongs to dev profile
SELECT AVG(salary) AS avg_salary FROM employee WHERE profile = 'dev';

#  I want to see the employee’s name and salary who is having lowest experience.
SELECT name , salary FROM employee 
WHERE salary = (SELECT salary FROM employee ORDER BY salary ASC LIMIT 1); 

#  I want to see the employee name who is having lowest age with max salary.
SELECT name , salary FROM employee  
WHERE age = (SELECT MIN(age) FROM employee)
AND salary = (SELECT MAX(salary) from employee);

# I want to remove all the employee from company.
TRUNCATE employee;
SELECT * FROM employee;