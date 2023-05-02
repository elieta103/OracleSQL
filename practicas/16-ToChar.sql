-- FUNCIONES DE CONVERSION
-- TO_CHAR
-- TO_DATE
-- TO_NUMBER

-- CONVERSIONES EXPLICITAS
SELECT '10'+10 FROM DUAL;
SELECT MONTHS_BETWEEN(SYSDATE, '10-10-18') FROM DUAL;
SELECT 10||'10' FROM DUAL;
SELECT 'HOY ES : '||SYSDATE FROM DUAL;

-- CONVERSIONES IMPLICITAS
-- TO_CHAR(DATE/NUMBER, 'FORMATO')
-- TO_CHAR(DATE, 'FORMATO')
/*
YYYY     AÑO 4 NUMEROS
YEAR     AÑO (INGLES)
MM       MES 2 DIGITOS
MONTH    MES EN TEXTO
MON      ABREVIATURA DE MES
DY       ABREVIATURA DE DIA
DAY      DIA EN TEXTO
DD       NUMERO DEL DIA
*/

-- DEVUELVE AÑO, MES, DIA
SELECT SYSDATE, TO_CHAR(SYSDATE, 'YYYY'), TO_CHAR(SYSDATE, 'MONTH'),  TO_CHAR(SYSDATE, 'DAY')  FROM DUAL;

/*
AM PM    MERIDIANO
HH       FORMATO 12 HORAS
HH24     FORMATO 24 HORAS
MI       MINUTO
SS       SEGUNDOS
*/

-- DEVUELVE HH 12, HH 24, MINUTOS, HORA
SELECT SYSDATE, TO_CHAR(SYSDATE, 'HH'), TO_CHAR(SYSDATE, 'HH24'),  TO_CHAR(SYSDATE, 'MI'), TO_CHAR(SYSDATE, '"SON LAS : " HH24:MI " DE HOY"')  FROM DUAL;

-- TO_CHAR(NUMERO, 'FORMATO')
/*
9     NUMERO
0     VISUALIZA UN CERO
$     DOLAR
L     MONEDA ACTUAL
.     PUNTO_DECIMAL
,     MILES SEPARADOR
*/

-- FORMATO NUMERICO ALINEADO A DERECHA, RELLENA CEROS A LA IZQUIERDA, AGREGA SIMBOLO $, MONEDA ACTUALMENTE CONFIGURADA
-- NUMERO CON 2 POSICIONES DECIMALES
SELECT SALARY, TO_CHAR(SALARY, '99999'), TO_CHAR(SALARY, '00009'), 
               TO_CHAR(SALARY, '$00009'), TO_CHAR(SALARY, 'L00009'), 
               TO_CHAR(SALARY, 'L00009.99') 
               FROM EMPLOYEES;


-- 1. Funciones de conversion . TO_C HAR
-- Indicar los empleados que entraron en Mayo en la empresa. Debemos buscar por la abreviatura del mes
SELECT * FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE, 'MON') = 'MAY';

-- Indicar los empleados que entraron en el año 2007 usando la función to_char
SELECT * FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE, 'YYYY') = '2007';

-- ¿Qué día de la semana (en letra) era el día que naciste?
SELECT TO_CHAR(TO_DATE('14-05-1978'), 'DAY') FROM DUAL;

-- Averiguar los empleados que entraron en el mes de Junio. Debemos preguntar por el mes en letra. 
-- Nota: La función TO_CHAR puede devolver espacios a la derecha)
SELECT * FROM EMPLOYEES
WHERE RTRIM(TO_CHAR(HIRE_DATE, 'MONTH')) = 'JUNIO';

-- Visualizar el salario de los empleados con dos decimales y en dólares y también en la moneda local
SELECT FIRST_NAME,  TO_CHAR(SALARY, '$99,999.99') AS DOLARES, TO_CHAR(SALARY, 'L99,999.99') AS LOCAL FROM EMPLOYEES;

