# Job-Seeking-Site-DB

This database stores the data of companies, job posts, employees and job seekers.
There are 5 tables in the database: Person, Company, Job Post, Application, Employment.
Here are the schemas:

Person:
- person_id int PK
- first_name varchar(100)
- last_name varchar(100)

Company:
- company_id int PK
- name varchar(100)
- industry varchar(50)
- country varchar(50)

Employment:
- employment_id int PK
- company_id int FK Company(company_id)
- person_id int FK Person(person_id)
- job_title varchar(50),
- job_type enum('full time', 'part time')

Job_Post:
- post_id int PK
- company_id int FK Company(company_id)
- job_title varchar(50)
- job_type enum('full time', 'part time')
- experience_level enum('junior', 'senior', 'associate', 'director', 'executive')

Application:
- application_id int PK
- post_id int FK Job_Post(post_id)
- person_id int FK Person(person_id)
- apply_date date

You can import the construct_tables.sql file into your Postgresql database and run it. It will create all the tables. You can also import the insert_tables.sql file to insert some sample data to the database. There are some sample queries in the queries.sql file which you can use to query the tables.
