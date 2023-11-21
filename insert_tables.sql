insert into Person (first_name, last_name) values
('Eric', 'Johnson'),
('Josh', 'Drinkwater'),
('Steven', 'McDonald'),
('Emma', 'Chen');

insert into Company (name, industry, country) values
('Microsoft', 'Software Development', 'United States'),
('Meta', 'Software Development', 'United States'),
('RBC', 'Banking', 'Canada'),
('Tim Hortons', 'Food and Beverage Services', 'Canada');

insert into Employment (company_id, person_id, job_title, job_type) values
(4, 1, 'Cashier', 'part time'),
(1, 1, 'Cleaner', 'part time'),
(3, 4, 'Banker', 'full time');

insert into Job_Post (company_id, job_title, job_type, experience_level, description) values
(1, 'ML Engineer', 'full time', 'senior', 'Objectives of this role:
Design and develop machine learning algorithms and deep learning applications and systems for Microsoft
Solve complex problems with multilayered data sets, and optimize existing machine learning libraries and frameworks 
Collaborate with data scientists, administrators, data analysts, data engineers, and data architects on production systems and applications   
Identify differences in data distribution that could potentially affect model performance in real-world applications
Ensure algorithms generate accurate user recommendations
Stay up to date with developments in the machine learning industry
Responsibilities
Study and transform data science prototypes and apply appropriate machine learning algorithms and tools 
Run machine learning tests and experiments, and document findings and results 
Train, retrain, and monitor machine learning systems and models as needed 
Construct optimized data pipelines to feed machine learning models
Consult with managers to determine and refine machine learning objectives 
Extend existing machine learning libraries and frameworks 
Skills and qualifications
Impeccable analytical and problem-solving skills 
Extensive math and computer skills, with a deep understanding of probability, statistics, and algorithms 
In-depth knowledge of machine learning frameworks, like Keras or PyTorch
Familiarity with data structures, data modeling, and software architecture 
Excellent time management and organizational skills
Desire to learn
Preferred qualifications
Proven experience as a machine learning engineer or similar role 
Familiarity with Python, Java, and R 
Excellent communication and collaboration skills
Innovative mind with a passion for continuous learning 
General knowledge of building machine learning systems 
Bachelor’s degree (or equivalent) in computer science, mathematics, or related field'),
(2, 'Graphics Programmer', 'full time', 'junior', 'Requirements: 10 years of experience in computer graphics'),
(4, 'Cashier', 'part time', 'junior', 'No experience is welcome')

insert into Application (post_id, person_id, apply_date) values
(1, 2, '2023-10-09'),
(1, 1, '2023-10-12'),
(1, 3, '2023-10-15'),
(2, 4, '2023-11-20')