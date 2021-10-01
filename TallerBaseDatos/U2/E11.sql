create database E11
use E11

create table Pedidos(
num_pedido int not null,
num_client int not null,
producto varchar(10) not null,
cantidad int not null,
importe decimal(10,2) not null)

create table Clientes(
num_cliente int not null,
empresa varchar(30) not null,
rep_cliente int not null,
lim_credito decimal(10,2) not null)

create table Oficinas(
oficina int not null,
ciudad varchar(30) not null,
region varchar(10) not null,
objetivo decimal(10,2) not null,
ventas decimal(10,2) not null)

create table Repventas(
nombre varchar(30) not null,
oficina_rep int,
cuota decimal (10,2),
ventas decimal(10,2))

insert into Pedidos values (112961,2117,'2A44L',7,31500.00),(113012,2111,'41003',35,3745.00),(112989,2101,'114',6,1458.00),
(113051,2118,'xx47',4,1420.00),(112968,2102,'41002',34,3978.00),(113036,2107,'41002',9,22500.00)

insert into Clientes values (2111,'JCP Inc.',103,50000.00),(2102,'First Corp.',101,65000.00),(2103,'Acne Mfg',105,50000.00),
(2123,'Carter & Sons',102,40000.00),(2107,'Ace International',110,35000.00)

insert into Oficinas values (22,'Denver','Oeste',300000.00,786042.00),(11,'New York','Este',575000.00,692637.00),(12,'Chicago','Este',800000.00,735042.00),
(13,'Atlanta','Este',350000.00,367911.00),(21,'Los Angeles','Oeste',725000.00,335915.00)

insert into Repventas values ('Bill Adams',13,350000.00,367911.00),('Mary Jones',11,300000.00,392725.00),('Sue Smith',21,350000.00,474050.00),
('Sam Clark',11,275000.00,299912.00),('Bob Smith',12,200000.00,142594.00),('Dan Roberts',12,300000.00,305673.00)

--Lista las oficinas con sus objetivos y sus ventas reales
select ciudad,objetivo,ventas from Oficinas

--Lista las oficinas con sus objetivos y ventas reales de la región Oeste
select ciudad,objetivo,ventas from Oficinas
where region='Oeste'

--Lista las oficinas con sus objetivos y ventas reales de la región Oeste, de aquellas ventas que exceden sus objetivos, ordenandolas por orden albafetivo por ciudad
select ciudad,objetivo,ventas from Oficinas
where ventas>objetivo
order by ciudad asc

--¿Cuales son los objetivos y ventas promedios para las oficinas de la oficina Este?
select ciudad,objetivo,AVG(ventas) as 'Promedio ventas' from Oficinas
where region='Este'

--Lista los nombres y oficinas de todos los repVentas
select nombre,oficina_rep from Repventas

--¿Cual es el nombre , cuota y ventas del empleado numero 107?
select * from Repventas
where oficina_rep=107

--¿Cuales son las ventas promedio de los vendedores?
select AVG(ventas) as 'Promedio Ventas 'from Repventas

--Liste el nombre de cualquier repVentas cuyas ventas sean superiores a 500,000
select nombre,ventas from Repventas
where ventas>500000

--Lista los vendedores, sus cuotas y direcciones
select nombre,cuota from Repventas

--Lista la poblacion, region y ventas de cada oficina de ventas
select region,ventas from Oficinas

--Lista la ciudad, region y ventas de cada oficina de ventas
select ciudad,region,ventas from Oficinas

--Despliga que sucederá si se eleva la cuota de cada vendedor un 3%
select cuota*1.03 from Repventas

--Muestra todos los datos de la tabla Oficinas
select * from Oficinas

--Lista las oficinas que están por debajo del 80% de su objetivo
select * from Oficinas
where objetivo<(objetivo*0.8)

--Emcuentra los pedidos cuyo importe está entre 30000.00 y 39999.00
select * from Pedidos
where importe between 30000.00 and 39999.00

--Lista los vendedores cuyas ventas no están en el 80% y 120% de su cuota
select * from Repventas
where ventas <> (cuota*0.80)
select * from Repventas
where ventas <> (cuota*1.2)

--Encuentra los vendedores que estan por debajo de sus cuotas con ventas inferiores a 300000
select * from Repventas
where ventas <300000.00

--Muestra las ventas de cada oficina, ordenadas por orden alfabetico por region y por region de cada ciudad
select ciudad,region,ventas from Oficinas
order by region asc
group by region

--Lista las oficinas clasificando de orden descendente las ventas
select * from Oficinas
order by ventas desc

--Cuales son las cuotas maxima y minima?
select max(cuota) as 'Cuota Maxima',min(cuota) as 'Cuota Minima' from Repventas

--¿Cuantos vendedores superan su cuota?
select * from Repventas
where ventas > cuota

--¿Cuantos pedidos de más de 25,000 hay en los registros?
select } from Pedidos
where importe > 25000