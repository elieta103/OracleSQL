-- Selecciona todas las columnas de la tabla EMPLOYEES
SELECT * FROM employees;

--Visualizar el nombre y salario de los empleados
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees;

--Visualizar el nombre y salario como SALARIO de los empleados
SELECT FIRST_NAME, LAST_NAME, SALARY AS SALARIO FROM employees;

--Visualizar el nombre y salario como "Salario Empleado" de los empleados
SELECT FIRST_NAME, LAST_NAME, SALARY AS "Salario Empleado" FROM employees;


--Visualizar el nombre y el número de teléfono de los empleados
SELECT FIRST_NAME, PHONE_NUMBER FROM EMPLOYEES;

-- Visualizar el nombre y el tipo de trabajo de los empleados (FIRST_NAME,JOB_ID). Debe aparecer en la cabecera NOMBRE Y Tipo de Trabajo.
SELECT FIRST_NAME AS NOMBRE, JOB_ID AS "Tipo de Trabajo" FROM EMPLOYEES;

-- Selecciona todas las columnas de la tabla REGIONS
SELECT * FROM REGIONS;

-- Indicar los nombres de los países de la tabla COUNTRIES
SELECT COUNTRY_NAME FROM COUNTRIES;


-- Seleccionar las columnas STREET_ADDRESS, CITY, STATE_PROVINCE dela table LOCATIONS. 
-- Debemos poner las columnas como dirección, Ciudad y Estado
SELECT street_address as "Dirección", city as "Ciudad", state_province as "Estado" FROM locations;