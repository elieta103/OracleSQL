-- Empleados del departamento 50
SELECT * FROM  employees WHERE department_id=50

-- Empleados que ganan mas de 4000
SELECT * FROM  employees WHERE salary > 4000

-- Empleados que no son del departamento 50
SELECT * FROM  employees WHERE department_id <> 50

-- Empleados que no son del departamento 50
SELECT first_name, last_name FROM  employees WHERE first_name ='John';

-- Las fechas se guardan como numero,Numero Juliano :  Dias transcurridos desde 1 de enero 4712 AC
SELECT first_name, last_name, hire_date FROM  employees WHERE hire_date='21-06-07';



-- Averigua los empleados que trabajen en el departamento 100
SELECT * FROM  employees WHERE department_id = 100;

-- Usando la tabla LOCATIONS, averigua el nombre de la Ciudad (city) y la dirección (Street_address) de los departamentos situados en Estados Unidos (COUNTRY_ID=US)
SELECT city, street_address FROM  locations WHERE country_id = 'US';

-- Visualiza los países que están en la región 3. (REGION_ID de la tabla COUNTRIES
SELECT * FROM COUNTRIES WHERE region_id = 3;

-- Averiguar el nombre y salario de los empleados que NO tengan como jefe al MANAGER 114 (columna MANAGER_ID)
SELECT first_name, last_name, salary FROM  employees WHERE manager_id <> 114;

-- Visualizar los empleados que empezaron a trabajar a partir del año 2006
SELECT * FROM employees WHERE hire_date > '01-01-2006';

-- Seleccionar los empleados que tenga como tipo de trabajo ‘ST_CLERK’
SELECT * FROM employees WHERE job_id = 'ST_CLERK';

-- Indicar los datos de los empleados que tengan como apellidos “Smith” (LAST_NAME)
SELECT * FROM employees WHERE last_name = 'Smith';















