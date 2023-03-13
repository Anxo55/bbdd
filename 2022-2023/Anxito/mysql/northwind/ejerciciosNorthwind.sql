# 1- Realizar una consulta que me muestre toda las columnas de la tabla de productos
SELECT *
FROM products;

# 2- Realizar una consulta que me muestre el código, el nombre y el precio del 
#producto
SELECT ProductName, ProductID, UnitPrice
FROM products;

#3- Realizar una consulta que me muestre el código, nombre y la categoría de los 
#productos que estén entre 18.00 y 20.00

SELECT ProductId, ProductName, CategoryName
FROM products p JOIN Categories c USING(categoryID) 
WHERE unitPrice between 18.000 and 20.000;

# 4- Realiza una consulta que permita presentar la fecha actual mediante una función
SELECT SYSDATE(), curdate(), current_date()
FROM dual;

#5- Realiza una consulta que permita presentar los apellidos de los empleados en 
#minúscula
SELECT LOWER(LastName)
FROM employees;


#6- Realiza una consulta que permita presentar los apellidos de los empleados en 
#mayúscula
SELECT UPPER(LastName)
FROM employees;

#7- Realiza una consulta que permita presentar las tres primeras letras del nombre de 
#los empleados
SELECT FirstName, SUBSTRING(FirstName, 1, 3)
FROM employees;

#8- Realiza una consulta que permita presentar el nombre y apellido, y un correo 
#electrónico de los empleados, éste deberá tener los siguientes datos:
#a. La primera letra del nombre, seguida del apellido
#b. El correo deberá presentarse en minúscula

SELECT   firstname, lastName
FROM employees; 

#9- Realiza una consulta que permita presentar el nombre y apellidos de los 
#empleados que tengan más de 40 años


#10- Realiza una consulta que permita presentar el número de fax que tiene cada país


#11- Realiza una consulta que permita presentar el máximo, mínimo y el promedio de 
#años que llevan en la empresa los empleados


#12- Realiza una consulta que permita presentar un listado de países que no tienen 
#faxes con su respectiva cantidad


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






