-- find who has applied to the jobs provided by which companies
select p.person_id, first_name, last_name, job_title, name from person p
inner join application a on p.person_id = a.person_id
inner join job_post j on a.post_id = j.post_id
inner join company c on j.company_id = c.company_id;

-- find who is employed by which companies
create or replace view employee as
select p.person_id, first_name, last_name, c.name, c.company_id from person p
left join employment e on p.person_id = e.person_id
left join company c on e.company_id = c.company_id;

select * from employee;

-- find number of workers for each company
select company_id, name, count(company_id) from employee
where company_id is not null
group by company_id, name;

