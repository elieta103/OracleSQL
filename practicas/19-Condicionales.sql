-- CONDICIONALES
/*
    V1
    CASE 10
         20
         30
*/

-- CASE
SELECT FIRST_NAME, JOB_ID,
    CASE JOB_ID
        WHEN 'SH_CLERK' THEN 'TIPO 1'
        WHEN 'ST_MAN' THEN 'TIPO 2'
        WHEN 'ST_CLERK' THEN 'TIPO 3'
        ELSE 'SIN TIPO'
    END
FROM EMPLOYEES WHERE DEPARTMENT_ID =50;

-- CASE SEARCHED
SELECT FIRST_NAME, SALARY,
    CASE
        WHEN SALARY BETWEEN 0 AND 3000 THEN 'GANAS POCO'
        WHEN SALARY BETWEEN 3001 AND 5000 THEN 'GANAS COMO LA MEDIA'
        WHEN SALARY > 5001 THEN 'GANAS BASTANTE'
        ELSE 'NO GANAS'
    END
FROM EMPLOYEES;

-- DECODE(VALOR, CONDICION1, VALOR1, CONDICION2, VALOR2, CONDICION3, VALOR3, VALOR_NO_CUMPLE_NADA)
SELECT FIRST_NAME, DEPARTMENT_ID,
DECODE(DEPARTMENT_ID, 50, 'INFORMATICA', 10, 'VENTAS', 'OTRO TRABAJO')
FROM EMPLOYEES;

-- 1. Expresiones condicionales
-- Visualizar los siguientes datos con CASE.
-- Si el departamento es 50 ponemos Transporte
-- Si el departamento es 90 ponemos Dirección
-- Cualquier otro número ponemos “Otro departamento”
SELECT FIRST_NAME, DEPARTMENT_ID,
    CASE
        WHEN DEPARTMENT_ID=50 THEN 'TRANSPORTE'
        WHEN DEPARTMENT_ID=90 THEN 'DIRECCION'
        ELSE 'OTRO DEPARTAMENTO'
    END
FROM EMPLOYEES;


-- Mostrar de la tabla LOCATIONS, la ciudad y el país. Ponemos los siguientes datos dependiendo de COUNTRY_ID.
-- Si es US y CA ponemos América del Norte
-- Si es CH, UK, DE,IT ponemos Europa
-- Si es BR ponemos América del Sur
-- Si no es ninguno ponemos ‘Otra zona’
SELECT CITY, COUNTRY_ID,
 CASE
        WHEN COUNTRY_ID IN('US', 'CA') THEN 'AMERICA DEL NORTE'
        WHEN COUNTRY_ID IN('CH', 'UK', 'DE', 'IT') THEN 'EUROPA'
        WHEN COUNTRY_ID IN('BR') THEN 'AMERICA DEL SUR'
        ELSE 'OTRA ZONA'
    END
FROM LOCATIONS;

-- Realizar el primer ejercicio con DECODE en vez de con CASE
SELECT FIRST_NAME, DEPARTMENT_ID,
    DECODE(DEPARTMENT_ID, 50, 'TRANSPORTE', 60, 'DIRECCION', 'OTRO DEPARTAMENTO')
FROM EMPLOYEES;

