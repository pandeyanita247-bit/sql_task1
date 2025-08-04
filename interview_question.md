1. What is normalization?
Normalization is the process of organizing data in a database so there is no duplicate (repeated) data and it is stored efficiently.

2. Explain primary vs foreign key.
Primary Key: Uniquely identifies each row in a table. (Example: student_id)

Foreign Key: Links one table to another. It refers to a primary key in another table.

3. What are constraints?
Constraints are rules used to control what kind of data goes into a table.
Examples:

NOT NULL: value cannot be empty

UNIQUE: value must be different for each row

PRIMARY KEY: uniquely identifies each row

FOREIGN KEY: links two tables

CHECK: checks a condition (like age > 18)

4. What is a surrogate key?
A surrogate key is a random or auto-generated ID used instead of natural data.
Example: student_id = 101, instead of using name + DOB.

5. How do you avoid data redundancy?
By normalizing the data, splitting large tables into smaller ones, and using foreign keys to connect them.

6. What is ER diagram?
ER Diagram (Entity-Relationship Diagram) is a visual diagram that shows tables, their columns, and how they are connected with relationships.

7. What are the types of relationships in DBMS?
One-to-One (1:1)

One-to-Many (1:N)

Many-to-Many (M:N)

Example:

One student has one ID card → One-to-One

One author can write many books → One-to-Many

Many students can take many courses → Many-to-Many

8. Explain the purpose of AUTO_INCREMENT.
It is used to automatically increase the value of a column (usually id) when a new row is added.
You don’t have to enter it manually.

9. What is the default storage engine in MySQL?
It is InnoDB — it supports transactions, foreign keys, and is reliable.

10. What is a composite key?
A composite key is a key made by combining two or more columns to uniquely identify a row.
Example: (student_id + course_id) together form a composite key.










Ask ChatGPT


