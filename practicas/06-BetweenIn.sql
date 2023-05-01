--BETWEEN V1 AND V2
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 1000 AND 3000;

--BETWEEN V1 AND V2
SELECT * FROM EMPLOYEES WHERE hire_date BETWEEN '01-01-07' AND '01-01-08';

--BETWEEN V1 AND V2
SELECT * FROM EMPLOYEES WHERE first_name BETWEEN 'Douglas' AND 'Steven';

-- IN (V1, V2, ... Vn)
SELECT * FROM EMPLOYEES WHERE department_id IN (50, 60);

-- IN (V1, V2, ... Vn)
SELECT * FROM EMPLOYEES WHERE job_id IN ('SH_CLERK', 'ST_CLERK', 'ST_MAN');


-- Averiguar los empleados que están entre el departamento 40 y el 60
SELECT * FROM EMPLOYEES WHERE department_id BETWEEN 40 AND 60;

-- Visualizar los empleados que entraron entre 2002 y 2004
SELECT * FROM EMPLOYEES WHERE hire_date BETWEEN '01-01-2002' AND '31-12-2004';

-- Indica los apellidos de los empleados que empiezan desde ‘D’ hasta ‘G’;
SELECT last_name FROM EMPLOYEES WHERE last_name BETWEEN 'D' AND 'H';

-- Averiguar los empleados de los departamentos 30,60 y 90. Hay que usar la cláusula IN
SELECT * FROM EMPLOYEES WHERE department_id IN(30, 60, 90);

-- Averiguar los empleados que tienen el tipo de trabajo IT_PROG y PU_CLERK.
SELECT * FROM EMPLOYEES WHERE job_id IN('IT_PROG', 'PU_CLERK');

-- Indica las ciudades que están en Inglaterra (UK) y Japón (JP).. Tabla LOCATIONS
SELECT * FROM LOCATIONS WHERE country_id IN ('UK', 'JP');
