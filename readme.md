## SOFT Databases SP-1: Relationelle Databaser
**Gruppe C: Frederik, Janus og Julius**

### Assignment:
Advanced Database Design and Optimization 

Objective: The objective of this assignment is to give students hands-on experience with advanced database concepts and techniques, such as normalization, denormalization, CAP theory, ACID properties, and performance optimization, using Microsoft SQL Server (MSSQL). 

Task Description: 

- Using the scenario detailed below. 
- Design the database for the scenario using the following guidelines: 
1. Normalize the database to the 3.5 normal form (3.5NF). 
1. Evaluate the design and determine if denormalization is necessary for performance reasons. If so, denormalize the database while still maintaining its data integrity.  
1. Create a diagram of the final database design, including entities, attributes, relationships, and any necessary notes on denormalization. 
1. Optional: 
- Expand and Decide on the entities, attributes, and relationships for the database.  
- Normalize the database to the Fifth normal form (5NF). 
- Implement the database using Microsoft SQL Server (MSSQL). 
- Create stored procedures to perform the following tasks (can be combined with the Transaction requirements below):  
  - Add a new record to the database.  
  - Update an existing record in the database.  
  - Delete a record from the database.  
  - Retrieve data from the database based on specified criteria. 
  - Plan, Create and bulk insert relevant dummy test data into the database. 
- Use transactions to ensure data integrity and consistency in the database. Implement the following tasks using transactions(can be combined with the stored procedure requirements above):  
  - Insert multiple records into the database in a single transaction.  
  - Update multiple records in the database in a single transaction.  
  - Delete multiple records from the database in a single transaction. 
- Evaluate the performance of the database and implement performance optimization techniques, such as indexing, partitioning, and caching. 

Write a reflection paper detailing the following 

1. Explanation of the CAP theory and ACID properties, and how they were applied to the database design and implementation. 
1. Reflections on the challenges faced and lessons learned during the implementation of the database.  
1. Conclusion and recommendations for future improvements. 

Note: Make sure to follow the ACID properties of transactions and explain the CAP theory in your reflection. 

Scenario:Library Management System 

A library has a collection of books, magazines, and other materials that it loans out to its patrons. The library wants to keep track of its collection, patrons, and loans in a database system. 

Entities: 

- Book: ID, Title, Author, ISBN, Publisher, Publication Date, Genre, Number of Pages, and Availability 
- Magazine: ID, Title, Publisher, Publication Date, Genre, Number of Pages, and Availability 
- Patron: ID, First Name, Last Name, Email, Phone Number, Address, and Date of Birth 
- Loan: ID, Patron ID, Book/Magazine ID, Loan Date, Due Date, and Return Date 

Attributes: 

- ID: Unique identifier for each entity 
- Title: Title of the book or magazine 
- Author: Author of the book (not applicable for magazines) 
- ISBN: International Standard Book Number for the book (not applicable for magazines) 
- Publisher: Publisher of the book or magazine 
- Publication Date: Publication date of the book or magazine 
- Genre: Genre of the book or magazine 
- Number of Pages: Total number of pages in the book or magazine 
- Availability: Whether the book or magazine is available for loan or not 
- First Name: First name of the patron 
- Last Name: Last name of the patron 
- Email: Email address of the patron 
- Phone Number: Phone number of the patron 
- Address: Address of the patron 
- Date of Birth: Date of birth of the patron 
- Loan Date: Date the book or magazine was loaned 
- Due Date: Date the book or magazine is due back 
- Return Date: Date the book or magazine was returned 

Relationships: 

- A book or magazine can be loaned by one patron at a time (1:1 relationship between Loan and Book/Magazine) 
- A patron can have multiple loans (1:N relationship between Patron and Loan) 

Good luck! 
