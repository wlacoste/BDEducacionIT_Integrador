-- Etapa 2.1
use laboratorio;

-- carga de datos csv clientes_neptuno.csv a nueva tabla clientes_neptuno

-- 2
ALTER TABLE clientes_neptuno 
MODIFY COLUMN IDCliente VARCHAR(5) NOT NULL ,
ADD PRIMARY KEY (IDCliente);

ALTER TABLE clientes_neptuno 
MODIFY COLUMN NombreCompania VARCHAR(100) NOT NULL;

ALTER TABLE clientes_neptuno 
MODIFY COLUMN Pais VARCHAR(15) NOT NULL;

-- 3
RENAME TABLE clientes to contactos;

-- 4 carga de datos csv clientes.csv a nueva tabla clientes

-- 5
ALTER TABLE clientes 
MODIFY COLUMN COD_CLIENTE VARCHAR(7) NOT NULL ,
ADD PRIMARY KEY (COD_CLIENTE);

ALTER TABLE clientes 
MODIFY COLUMN EMPRESA VARCHAR(100) NOT NULL;

ALTER TABLE clientes 
MODIFY COLUMN CIUDAD VARCHAR(25) NOT NULL;

ALTER TABLE clientes 
MODIFY COLUMN TELEFONO INT UNSIGNED;

ALTER TABLE clientes 
MODIFY COLUMN RESPONSABLE VARCHAR(30);








