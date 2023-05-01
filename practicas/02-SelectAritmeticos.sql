--Visualizar el nombre, salario y salario anual de los empleados
SELECT FIRST_NAME, SALARY, SALARY*12 AS "Salario Anual" FROM employees;

-- Realizar una SELECT para visualizar el siguiente resultado. El impuesto es el20% del salario.
SELECT FIRST_NAME, SALARY AS "Salario bruto", SALARY*0.2 AS "Impuesto", SALARY-(SALARY*0.2) AS "Salario Neto" FROM employees;

--Visualizar el salario anual de cada empleado, por 14 pagas. Debemos visualizar las columnas como Nombre, Salario y Salario Anual
SELECT FIRST_NAME, SALARY, SALARY*14 AS "Salario Anual" FROM employees;