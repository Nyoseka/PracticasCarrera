select SUM(ytd_sales) from titles

--9. Precio promedio
select AVG(price) from titles

--10. Mostrar mayor valor de las ventas del año
select MAX(ytd_sales) from titles

--11. Mostrar valor minimo de ventas
select MIN(ytd_sales) from titles

--12. Contar filas de la tabla titles
select COUNT(*) from titles

--13. Datos con tipo bussiness
select COUNT(*) from titles
where type='business'

--14. Suma de las ventas por año clasificando por tipo
select sum(ytd_sales),type as titles from titles
group by type

--15. las sumas de las ventas por año (ytd_sales) hasta la fecha, clasificándolas por tipo (TYPE) y
--pub_id, liste solamente los grupos cuyo pub_id sea igual a 0877, utilizando having.
select SUM(ytd_sales),type,pub_id as titles from titles
group by type
having pub_id='0877'

--16. Full Outer Join stor_id y discounttype
select * from stores
full outer join discounts
on stores.stor_id=discounts.stor_id

--17. Left Outer join
select * from stores
left outer join discounts
on stores.stor_id=discounts.stor_id

--18. Right Outer Join
select * from stores
right outer join discounts
on stores.stor_id=discounts.stor_id
