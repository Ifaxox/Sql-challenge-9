# Sql-challenge-9

My task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

I had to design a schema, create tables and import the data from each CSV file to their respective files. I made sure each column in the tables were assigned correct data types and assigned a primary key. 
I began by creating an entity relation table to see which tables could be joined to display data from the CSV files. I designed my queries in order to do the analysis required. 

In my analysis I joined tables employees and salaries as an inner join that allowed me to display columns from both tables and salaries for each employee by name. 
I also joined multiple tables: "departments," "dept_manager," and "employees.",  using two joins allowing me to carry out query 3. 
Following that I joined tables: "departments," "dept_emp," and "employees." In order to retrieve query 4 info.
From the employees table I retrieved data showing all employees with a first name: Hercules and a last name: beginning with the letter b. the data showed both genders in these query conditions. 
Through further analysis and inner joining the employees table with the dept_emp table and the departments table I was able to see employees in specific departments by names. 
For the last query the data showed last names and their frequencies, I found that “BABA” was the most frequent last name while “Foolsday” was the least frequent last name. 
