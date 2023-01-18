use laboratorio;

-- Etapa 3.2
-- 1
select IDCliente, NombreCompania, concat( Direccion,'-', ciudad,'-', pais) as ubicacion from clientes_neptuno;
-- 2
select IDCliente, NombreCompania, concat_ws('-', Direccion, ciudad, pais) as ubicacion from clientes_neptuno;
-- 3
select IDCliente, UPPER(NombreCompania) as EMPRESA, concat_ws('-', Direccion, ciudad, pais) as ubicacion from clientes_neptuno;
-- 4
select lower(IDCliente) as CODIGO, UPPER(NombreCompania) as EMPRESA, concat_ws('-', Direccion, ciudad, pais) as ubicacion from clientes_neptuno;

-- 5 
select FECHA, left(SEXO,1) as SEXO, left(TIPO_PARTO,1) as TIPO from nacimientos;
-- 6
select *, UPPER(concat(left(Ciudad,1),left(pais,1),right(pais,2))) from clientes_neptuno;
-- 7 
select sexo, fecha, tipo_parto, atenc_part , local_part, SUBSTRING(FECHA, 4, 2) AS MES  FROM nacimientos ORDER BY MES;
-- 8
select sexo, fecha, tipo_parto, case when NACIONALIDAD  = 'Chilena' THEN 'Ciudadana' else NACIONALIDAD  END as NACIONALIDAD FROM nacimientos;

-- Etapa 3.3
-- 1
select * from pedidos_neptuno where year(FechaPedido) = 1998;
-- 2
select * from pedidos_neptuno where year(FechaPedido) = 1997 and month(FechaPedido) in (8,9);
-- 3
select * from pedidos_neptuno where day(FechaPedido) = 1;
-- 4
select *,  datediff(curdate(), FechaPedido) as DIAS_TRANSCURRIDOS from pedidos_neptuno;
-- 5
select *,  datediff(curdate(), FechaPedido) as DIAS_TRANSCURRIDOS , dayname(FechaPedido) as DIA from pedidos_neptuno;
-- 6
select *,  datediff(curdate(), FechaPedido) as DIAS_TRANSCURRIDOS , dayname(FechaPedido) as DIA, dayofyear(FechaPedido) as 'DIA DEL ANIO' from pedidos_neptuno;
 -- 7
 select *,  datediff(curdate(), FechaPedido) as DIAS_TRANSCURRIDOS , dayname(FechaPedido) as DIA, dayofyear(FechaPedido) as 'DIA DEL ANIO', monthname(FechaPedido) as MES from pedidos_neptuno;
 -- 8 
select *,  
datediff(curdate(), FechaPedido) as DIAS_TRANSCURRIDOS ,
dayname(FechaPedido) as DIA, 
dayofyear(FechaPedido) as 'DIA DEL ANIO',
monthname(FechaPedido) as MES,
date_add(FechaPedido, INTERVAL 30 day) as 'Primer vencimiento'
from pedidos_neptuno;

-- 9
select *,  
datediff(curdate(), FechaPedido) as DIAS_TRANSCURRIDOS ,
dayname(FechaPedido) as DIA, 
dayofyear(FechaPedido) as 'DIA DEL ANIO',
monthname(FechaPedido) as MES,
date_add(FechaPedido, INTERVAL 30 day) as 'Primer vencimiento',
date_add(FechaPedido, INTERVAL 60 day) as 'Segundo vencimiento'
from pedidos_neptuno;

-- Etapa 3.4
-- 1
select *, round(Cargo*0.21,2) as IVA  from pedidos_neptuno;
-- 2
select *, round(Cargo*0.21,2) as IVA, round(Cargo + Cargo*0.21,2) as NETO  from pedidos_neptuno;
-- 3
select *, round(Cargo*0.21,2) as IVA, round(Cargo + Cargo*0.21,2) as NETO, floor(Cargo + Cargo*0.21) as 'Redondeo cliente' from pedidos_neptuno;
-- 4
select *, round(Cargo*0.21,2) as IVA, round(Cargo + Cargo*0.21,2) as NETO, floor(Cargo + Cargo*0.21) as 'Redondeo cliente', ceil(Cargo + Cargo*0.21) as 'Redondeo empresa' from pedidos_neptuno;

-- Etapa 3.5






 
 
 
 
 
 
 
 
 
 




