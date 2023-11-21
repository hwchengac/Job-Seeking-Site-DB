create table Person
(
	person_id serial primary key,
	first_name varchar(100),
	last_name varchar(100)
);

create table Company
(
	company_id serial primary key,
	name varchar(100),
	industry varchar(50),
	country varchar(50)
);

create type job_type as enum('full time', 'part time');
create table Employment
(
	employment_id serial primary key,
	company_id int references Company(company_id),
	person_id int references Person(person_id),
	job_title varchar(50),
	job_type job_type
);

create type experience_level as enum('junior', 'senior', 'associate', 'director', 'executive');
create table Job_Post
(
	post_id serial primary key,
	company_id int references Company(company_id),
	job_title varchar(50),
	job_type job_type,
	experience_level experience_level,
	description text
);

create table Application
(
	application_id serial primary key,
	post_id int references Job_Post(post_id),
	person_id int references Person(person_id),
	apply_date date
);