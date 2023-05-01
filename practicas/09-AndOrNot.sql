-- CONDICIONES AND, OR, NOT

--Empleados que ganan mas de 5000 y pertenezcan al depto = 50
SELECT * FROM employees WHERE salary > 5000 AND department_id =50;

--Empleados que ganan mas de 5000 o pertenezcan al depto = 50
SELECT * FROM employees WHERE salary > 5000 OR department_id =50;

--Empleados que ganan mas de 5000 o pertenezcan al depto = 50
SELECT * FROM employees WHERE department_id  NOT IN(50, 60);

-- Multiples condiciones
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID, HIRE_DATE FROM EMPLOYEES WHERE SALARY > 5000 AND DEPARTMENT_ID=50 AND HIRE_DATE > '01-01-05';

--1. AND OR NOT
-- Obtener el nombre y la fecha de la entrada y el tipo de trabajo de los empleados que sean IT_PROG y que ganen menos de 6000 dólares
SELECT FIRST_NAME,HIRE_DATE, JOB_ID, SALARY FROM EMPLOYEES WHERE job_id='IT_PROG' AND salary < 6000;

-- Seleccionar los empleados que trabajen en el departamento 50 o 80, cuyo nombre comience por S y que ganen más de 3000 dólares.
SELECT * FROM EMPLOYEES WHERE department_id IN (50,80) AND FIRST_NAME LIKE 'S%' AND SALARY>3000;

-- ¿Qué empleados de job_id IT_PROG tienen un prefijo 5 en el teléfono y entraron en la empresa en el año 2007?
SELECT * FROM EMPLOYEES WHERE JOB_ID='IT_PROG' AND PHONE_NUMBER LIKE '5%' AND HIRE_DATE>'01-01-2007';
