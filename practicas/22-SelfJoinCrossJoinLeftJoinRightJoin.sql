-- JOINS CON WHERE

-- NO RECOMENDABLE
-- JOIN SOLO PARA UNIONES
-- WHERE  FILTROS
SELECT DEPARTMENT_NAME, FIRST_NAME, CITY
    FROM EMPLOYEES E, DEPARTMENTS D, LOCATIONS L
    WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID AND L.LOCATION_ID=D.LOCATION_ID;
    
-- SELF JOIN
-- RELACIONES RECURSIVAS, EMPLEADO->MANAGER
-- ID   NAME    MANAGER_ID     ID   NAME    MANAGER_ID   ID   NAME    MANAGER_ID
-- 10   TOMAS   90          -> 90   JUAN    120       -> 120  ROSA    NULL
-- EN LUGAR DE SER 2 TABLAS, ES EN UNA SOLA

    
-- NOMBRE DEL EMPLEADO Y SU JEFE    
SELECT TRABAJADOR.FIRST_NAME AS TRABAJADOR, JEFE.FIRST_NAME AS JEFE
    FROM EMPLOYEES TRABAJADOR JOIN EMPLOYEES JEFE ON(TRABAJADOR.MANAGER_ID=JEFE.EMPLOYEE_ID);
    
-- NON EQUIJOINS, NO IGUALES
-- OBTENER TODOS LOS DEPARTAMENTOS QUE TIENE SEDE EN SEATLE
SELECT DEPARTMENT_NAME
    FROM DEPARTMENTS D JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID
    WHERE L.CITY = 'Seattle';

-- OBTENER TODOS LOS DEPARTAMENTOS QUE NO TIENE SEDE EN SEATLE
SELECT DEPARTMENT_NAME
    FROM DEPARTMENTS D JOIN LOCATIONS L ON D.LOCATION_ID<>L.LOCATION_ID
    WHERE L.CITY = 'Seattle';   
    
-- OUTER JOIN
-- TIPOS : LEFT OUTER, RIGHT OUTER, FULL OUTER
-- EMPLEADOS CON SUS DEPARTAMENTOS
-- HAY 107 EMPLEADOS, ESTE QUERY DEVUELVE 106, HAY UN EMP QUE NO TIENE DEPTO, DEPARTMENT_ID=NULL
SELECT FIRST_NAME, DEPARTMENT_NAME
    FROM EMPLOYEES E JOIN DEPARTMENTS D ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;


-- EMPLEADOS CON SUS DEPARTAMENTOS
-- LEFT JOIN DAME TODOS LOS EMPLEADOS AUNQUE NO TENGAN DEPARTAMENTO
SELECT FIRST_NAME, DEPARTMENT_NAME
    FROM EMPLOYEES E LEFT JOIN DEPARTMENTS D ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;
    
SELECT FIRST_NAME, DEPARTMENT_NAME
    FROM DEPARTMENTS D RIGHT JOIN EMPLOYEES E ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;
    

-- EMPLEADOS CON SUS DEPARTAMENTOS
-- RIGHT JOIN DAME TODOS LOS DEPARTAMENTOS AUNQUE NO TENGAN EMPLEADOS
SELECT FIRST_NAME, DEPARTMENT_NAME
    FROM EMPLOYEES E RIGHT JOIN DEPARTMENTS D ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;
    
SELECT FIRST_NAME, DEPARTMENT_NAME
    FROM DEPARTMENTS D LEFT JOIN EMPLOYEES E ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;
    
-- EMPLEADOS Y DEPARTAMENTOS
-- FULL JOIN TODOS LOS EMPLEADOS Y DEPARTAMENTOS  TENGAN O NO CORRESPONDENCIA
SELECT FIRST_NAME, DEPARTMENT_NAME
    FROM DEPARTMENTS D FULL JOIN EMPLOYEES E ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;

-- PRODUCTO CARTESIANO
-- MANEJAR CON CUIDADO
SELECT FIRST_NAME, DEPARTMENT_NAME
    FROM EMPLOYEES CROSS JOIN DEPARTMENTS;


-- 1. Otros joins
-- Indicar el nombre del empleado y el de su jefe (SELF_JOIN de la tabla EMPLOYEES)
SELECT TRABAJADOR.FIRST_NAME AS TRABAJADOR, JEFE.FIRST_NAME AS JEFE
    FROM EMPLOYEES TRABAJADOR JOIN EMPLOYEES JEFE ON (TRABAJADOR.MANAGER_ID = JEFE.EMPLOYEE_ID);

-- Indica el DEPARTMENT_NAME y la suma de salarios de ese departamento ordenados ascendentemente 
-- y que aparezcan también los DEPARTMENT_NAME que no tengan empleados.
SELECT DEPARTMENT_NAME, SUM(E.SALARY) AS TOTAL
    FROM EMPLOYEES E RIGHT JOIN DEPARTMENTS D ON(D.DEPARTMENT_ID = E.DEPARTMENT_ID)
    GROUP BY DEPARTMENT_NAME 
    ORDER BY TOTAL ASC;

-- Visualizar la ciudad y el nombre del departamento, incluidas aquellas ciudades que no tengan departamentos
SELECT CITY, DEPARTMENT_NAME
    FROM DEPARTMENTS D RIGHT JOIN LOCATIONS L  ON (D.LOCATION_ID = L.LOCATION_ID)
    ORDER BY DEPARTMENT_NAME;


