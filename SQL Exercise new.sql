

-- Exercise 13 
 
Create database `soft_uni`;
use soft_uni;
Create Table `towns`(
`id` Int Primary key auto_increment,
`name` Varchar (30) 
);
Create Table `adresses` (
`id` Int Primary key auto_increment,
`adress_text` Varchar (100) not null,
`town_id` int not null, 
constraint fk_adresses_towns
foreign key (`town_id`) references `towns`(`id`)
);

Create Table `departments` (
`id` Int Primary key auto_increment, 
`name` Varchar (30) not null
);

Create Table `employees`(
`id` Int Primary key auto_increment, 
`first_name` Varchar (30) not null, 
`middle_name` Varchar (30) not null, 
`last_name` Varchar (30) not null, 
`job_title` Varchar (20), 
`salary` decimal(10,2),
`department_id` int not null, 
constraint fk_employees_departments
foreign key (`department_id`) references `departments`(`id`),
 `hire_date` date,
 `address_id` int not null,
 constraint fk_employees_adresses
 foreign key (`address_id`) references `adresses` (`id`)
 );
 
 Insert Into `towns` (`name`)
 values
 ('Sofia'),
 ('Plovdiv'),
 ('Varna'),
 ('Burgas');
 Insert into `departments` (`name`)
 values
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');

 ALTER TABLE `employees` MODIFY COLUMN `address_id` int NULL;
INSERT INTO `employees` 
(`first_name`, `middle_name`, `last_name`, `job_title`, `salary`, `department_id`, `hire_date`, `address_id`)
VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 3500.00, 4, '2013-02-01', NULL),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 4000.00, 1, '2004-03-02', NULL),
('Maria', 'Petrova', 'Ivanova', 'Intern', 525.25, 5, '2016-08-28', NULL),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 3000.00, 2, '2007-12-09', NULL),
('Peter', 'Pan', 'Pan', 'Intern', 599.88, 3, '2016-08-28', NULL);
 

 select * from `employees`;
 
 # Exercise 14
 
 Select * from `towns`;
 Select * from `departments`;
 Select * from `employees`;
 
  -- Exercise 15
 
 Select * From `towns`
 order by `name` ;
 Select * From `departments`
 order by `name`;
 Select * From `employees`
 order by `salary` desc;

# Exercise 16

Select `name` from `towns`
order by `name`;
Select `name` from `departments`
Order by `name`;
Select `first_name`, `last_name`, `job_title`, `salary` from `employees`
Order by `salary` desc;

# Exercise 17

SET SQL_SAFE_UPDATES = 1;
UPDATE `employees`
SET `salary` = `salary` * 1.1;
-- WHERE `id` IS NOT NULL;
Select `salary` from `employees`;
Select * from `employees`;

