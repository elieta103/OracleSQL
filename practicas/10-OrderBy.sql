-- ORDER BY
SELECT * FROM EMPLOYEES ORDER BY SALARY;

--ORDER BY
SELECT * FROM EMPLOYEES ORDER BY FIRST_NAME, LAST_NAME;

--ORDER BY
SELECT first_name, last_name,salary FROM EMPLOYEES 
WHERE first_name= 'David'
ORDER BY FIRST_NAME, LAST_NAME;

--order by para columnas calculadas, por la posicion
SELECT first_name, salary*12 FROM EMPLOYEES ORDER BY 2;

--order by para columnas calculadas, por alias
SELECT first_name, salary*12 AS SalarioAnual FROM EMPLOYEES ORDER BY SalarioAnual;