#1
SELECT * FROM products;

#2
SELECT productID,productName,unitPrice from Products;

#3
SELECT productID,productName,categoryID,unitPrice FROM products WHERE unitPrice between 18 AND 20;
#EJEMPLOS DE CÓMO SACAR EL NOMBRE DE LA CATEOGORÍA CON UN JOIN Y CON UNA SUBCONSULTA
SELECT ProductID,ProductName,categoryName FROM products JOIN categories USING(CategoryID);
SELECT ProductID,ProductName,(SELECT categoryName FROM categories WHERE categoryID=p.categoryID) FROM products p;

#4 ACORDAOS DE LA IMPORTANCIA DEL DUAL

SELECT SYSDATE(),curdate(),current_date() FROM dual;

#5 Consulta optimizada, ENTRA EN EXAMEN, REVISAR TEORÍA

(SELECT CONCAT(LOWER(UPPER(LOWER(UPPER(lastName)))),UPPER(SUBSTRING(firstname,0,0))) FROM Employees LIMIT 0,5)
UNION
(SELECT CONCAT(LOWER(UPPER(LOWER(UPPER(lastName)))),UPPER(SUBSTRING(firstname,0,0))) FROM Employees LIMIT 5,9);

#6 VERSIÓN PARA NOTA, CAERÁ UNA SIMILAR

SELECT UPPER(optimizada.apellido)
FROM (SELECT CONCAT(LOWER(UPPER(LOWER(UPPER(lastName)))),UPPER(SUBSTRING(firstname,0,0))) AS apellido FROM Employees) optimizada;

#7

SELECT substring(firstName,1,3)
FROM employees;

#8

SELECT firstName,LastName,LOWER(CONCAT(SUBSTRING(firstName,1,1),lastName,"@northwind.com")) AS Email
FROM Employees;

#9

SELECT FirstName,LastName,BirthDate,YEAR(curdate())-YEAR(birthdate) AS EDAD_NO_EXACTA,ROUND((DATEDIFF(curdate(),birthdate)/365),0),timestampdiff(YEAR ,birthdate,curdate())  FROM employees;

SELECT YEAR(orderDate),MONTH(orderDate) AS Mes,COUNT(*)
FROM orders GROUP BY YEAR(orderDate),MONTH(orderDate) HAVING MES=3;

SELECT YEAR(orderDate),COUNT(*)
FROM orders
WHERE MONTH(orderDate)=3
GROUP BY YEAR(orderDate);

#10

SELECT country,COUNT(DISTINCT FAX)
FROM customers
GROUP BY country;

#11
#Forma eficiente con subconsulta
SELECT MAX(anhos.antiguedad),MIN(anhos.antiguedad),AVG(antiguedad)
FROM (SELECT hireDate,timestampdiff(YEAR,hiredate,curdate()) AS Antiguedad
 FROM employees) anhos;
 
#Forma menos eficiente calculando en la select todos los datos

SELECT MIN(timestampdiff(YEAR,hiredate,curdate())) AS Rookie,MAX(timestampdiff(YEAR,hiredate,curdate())) AS Senior, AVG(timestampdiff(YEAR,hiredate,curdate())) AS "MEDIA EMPRESA"
FROM employees;

#12

SELECT country,COUNT(*)
FROM customers c1
GROUP BY country
HAVING COUNT(*)=(SELECT COUNT(*) FROM customers c2  WHERE c2.fax="" AND C2.country=c1.country GROUP BY c2.country);

SELECT country,group_concat(DISTINCT fax) AS faxes
FROM customers
GROUP BY country
HAVING faxes="";


#13- Realiza una consulta que permita presentar el nombre del cliente, el fax y el país 
#al que pertenece


#14- Realiza una consulta que muestre la mayor edad, la menor edad y la edad 
#promedio de los empleados. Recuerde que para eso tiene que buscar la diferencia 
#entre la fecha actual y la fecha de nacimiento.
#a. Para obtener la fecha actual utilice la función curdate().
#b. Para obtener la diferencia en años utilice la función datediff.


#15- Realiza una consulta que muestre la cantidad de facturas que se han registrado 
#por cada año (order day)


#16- Realiza una consulta que me permita mostrar el número de la factura y el valor 
#por concepto de envío


#17- Realiza una consulta que me permita mostrar el número de la factura y el valor 
#por concepto de envío pero de aquellos que superen a los 10.


#18- Realiza una consulta que muestre el código de la categoría, el total de productos 
#que tiene la categoría únicamente para las categorías que tengan más de 10 
#productos. Para esto utilice la cláusula having


#19- Realizar una consulta que permita presentar el nombre del producto y con su 
#respetiva categoría


#20- Realizar una búsqueda de los nombres de compañías con las cuales se ha tenido 
#ventas, ordenar por el código del vendedor


#21- Realiza una consulta que muestre el listado de las facturas de cada cliente.
#a. El listado debe tener las siguientes columnas: nombre del cliente, país 
#del cliente no. De factura fecha de factura ordenado por nombre del 
#cliente en forma ascendente y luego por la fecha de la factura de forma 
#descendente una búsqueda de los nombres de compañías con las cuales 
#se ha tenido ventas, ordenar por el código del vendedor


#22- Realiza una consulta que muestre un listado de los clientes y el monto total que 
#nos han comprado de los 5 clientes que más han comprado. El listado debe tener 
#las siguientes columnas: código del cliente, nombre del contacto, monto total. 
#Ordenado por el monto total de forma descendente


#23- Realiza una consulta que muestre un listado de los empleados de la empresa en 
#los diferentes territorios. El listado debe tener las siguientes columnas: nombre 
#del empleado ,id de la región y descripción del territorio ordenado por el nombre 
#completo del empleado de forma ascendente






