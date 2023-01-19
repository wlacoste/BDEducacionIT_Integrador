-- Etapa 5.1
-- 1
select * from productos_neptuno where PrecioUnidad > (select avg(PrecioUnidad) from productos_neptuno);
-- 2
select * from productos_neptuno where PrecioUnidad > (select max(PrecioUnidad) from productos_suspendidos) order by PrecioUnidad desc;

-- 3
select * from varones where semanas < (select min(semanas) from indeterminados);

-- 4
select * from productos_neptuno
 where NombreProducto like
	 (select concat(
		left(
			substring_index(NOMBRE_EMPLEADO, ' ',-1)
            ,1),
		'%') 
	 from empleados 
     where IdEmpleado = 8)
     order by NombreProducto;
	


