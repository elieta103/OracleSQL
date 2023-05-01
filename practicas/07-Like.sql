-- LIKE 'PATRON', Solo funciona para cadenas de caracteres
-- Todos los empleados en los que su first_name empiece con J
SELECT * FROM Employees WHERE first_name LIKE 'J%';

-- Todos los empleados en los que su first_name la segunda letra sea e
SELECT * FROM Employees WHERE first_name LIKE '_e%';

-- Todos los empleados en los que su first_name tenga te
SELECT * FROM Employees WHERE first_name LIKE '%te%';

-- Indicar los datos de los empleados cuyo FIRST_NAME empieza por ‘J’
SELECT * FROM Employees WHERE first_name LIKE 'J%';

-- Averiguar los empleados que comienzan por ‘S’ y terminan en ‘n’
SELECT * FROM Employees WHERE first_name LIKE 'S%n';

-- Indicar los países que tienen una “r” en la segunda letra (Tabla COUNTRIES)
SELECT * FROM countries WHERE country_name LIKE '_r%';