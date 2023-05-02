-- TO_DATE(STRING, 'FORMATO')
SELECT TO_DATE('12-22-89', 'mm-dd-yy') FROM DUAL;
SELECT TO_DATE('ENE-22-89', 'mon-dd-yy') FROM DUAL;

-- FORMATO RR
/*
    YY 0-49  2000   50-99 1900
*/
SELECT TO_CHAR(TO_DATE('10-01-89'), 'DD-MM-YYYY'), TO_CHAR(TO_DATE('10-01-39'), 'DD-MM-YYYY') FROM DUAL;

-- TO_NUMBER( STRING, 'FORMATO')
SELECT TO_NUMBER('1000.89', '9999.99') FROM DUAL;
SELECT TO_NUMBER('$1000.89', 'L9999.99') FROM DUAL;

-- 1. Funciones TO_DATE y TO_NUMBER
-- Convertir las siguientes cadenas a números
-- '1210.73'
-- ‘$127.2’
SELECT TO_NUMBER('1210.73', '9999.99') FROM DUAL;
SELECT TO_NUMBER('$127.2', '$9999.99') FROM DUAL;

--  Convertir los 3 primeros caracteres del número de teléfono en números y multiplicarlos por 2.
SELECT PHONE_NUMBER, TO_NUMBER(SUBSTR(PHONE_NUMBER, 1,3), '999')*2 FROM EMPLOYEES;

--  Convertir las siguientes cadenas en fecha (NOTA: el mes lo debemos poner en el idioma que tengamos en el SqlDeveloper. Por ejemplo: 
-- En español sería
-- 10 DE FEBRERO DE 2018
-- FACTURA: MARZO0806
--  En ingles sería:
-- 10 DE FEBRUARY DE 2018
-- FACTURA: MARCH0806

SELECT TO_DATE('10 DE FEBRERO DE 2018', 'DD "DE" MONTH "DE" YYYY') FROM DUAL;
SELECT TO_DATE('MARZO0806', 'MONTHYYDD') FROM DUAL;