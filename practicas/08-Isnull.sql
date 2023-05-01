-- NULL identifica los NULL

-- NO es valido
SELECT * FROM employees WHERE commission_pct = null;

-- Valido
SELECT * FROM employees WHERE commission_pct IS NULL;

--1. IS NULL
-- Listar las ciudades de la tabla LOCATIONS no tienen STATE_PROVINCE
SELECT city FROM locations WHERE state_province IS NULL;

-- Averiguar el nombre, salario y comisión de aquellos empleados que tienen comisión. 
-- También debemos visualizar una columna calculada denominada “Sueldo Total”, que sea el sueldo más la comisión
SELECT first_name, salary, commission_pct, salary+(commission_pct) AS "Sueldo total" FROM EMPLOYEES WHERE commission_pct IS NOT NULL;