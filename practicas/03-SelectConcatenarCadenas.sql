-- Concatenar cadenas
SELECT 'NOMBRE: ', FIRST_NAME FROM employees;

-- Concatenar cadenas con alias
SELECT 'NOMBRE: '||FIRST_NAME||' '||LAST_NAME AS "Nombre Empleado" FROM employees;

-- Concatenar cadenas con alias
SELECT 'El empleado '||FIRST_NAME||' del departamento '|| DEPARTMENT_ID|| ' tiene un salario de: ' || SALARY AS "Datos" FROM employees;

-- Concatenar cadenas con alias
SELECT 'La calle '||STREET_ADDRESS||' pertenece a la ciudad: '||CITY AS "Calle y Ciudad"  FROM locations;