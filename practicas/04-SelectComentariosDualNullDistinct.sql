-- COMENTARIO
/* COMENTARIO */

--Imprime 7, por cada registro de la tabla.
SELECT 4+3, FIRST_NAME FROM employees;

--Uso de la tabla DUAL, No se puede tocar y devuelve una sola fila.
SELECT 4+3 FROM dual;

--Descripcion Dual
DESC DUAL;

--Campos con null
SELECT FIRST_NAME, SALARY, COMMISSION_PCT FROM EMPLOYEES;

--Campos con null
SELECT FIRST_NAME, SALARY, COMMISSION_PCT, SALARY*COMMISSION_PCT AS "Salario total" FROM EMPLOYEES;


-- SIN DISTINCT
SELECT FIRST_NAME, DEPARTMENT_ID FROM employees;

-- SIN DISTINCT
SELECT DEPARTMENT_ID FROM employees;

-- USO DISTINCT
SELECT DISTINCT DEPARTMENT_ID, JOB_ID FROM employees;

-- Visualizar las ciudades donde hay departamentos, de la tabla locations. No deben salir repetidos
SELECT DISTINCT CITY FROM LOCATIONS;


-- Visualizar los distintos tipos de JOB_ID por departamento de la tabla Employees.
SELECT DISTINCT DEPARTMENT_ID, JOB_ID FROM employees;
