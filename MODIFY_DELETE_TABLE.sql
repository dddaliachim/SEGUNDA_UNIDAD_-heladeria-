---borrar tabla "clientes por que...no recordaba como cambiar el nombrexd y era en ingles"---
DROP TABLE cliente ;
DROP TABLE sale_details ;
DROP TABLE sales ;
---cambiar los nombres de las tablas...por que era en ingles(se me olvido otra vezxd)---
ALTER TABLE clientes RENAME TO customers;
ALTER TABLE helados RENAME TO ice_creams;
ALTER TABLE sale_detail RENAME TO sale_details;
ALTER TABLE ventas RENAME TO sales;
---eliminar columna de tabla(solo para usar este comando jsjsjs)---
ALTER TABLE customers
DROP COLUMN telefono_cliente;
---agregar columna a tabla---
ALTER TABLE customers
ADD customer_phone VARCHAR;
---cambiar nombre de colunmas de la tabla "customers"---(era en ingles!!!)---
ALTER TABLE customers RENAME COLUMN id_cliente TO id_customer;
ALTER TABLE customers RENAME COLUMN nombre_cliente TO name_customer;
ALTER TABLE customers RENAME COLUMN direccion_cliente TO address_customer;
---cambiar nombre de colunmas de la tabla "ice_creams"---(era en inglesx2)---
ALTER TABLE ice_creams RENAME COLUMN id_helado TO id_ice_cream;
ALTER TABLE ice_creams RENAME COLUMN sabor_helado TO flavor_ice_cream;
ALTER TABLE ice_creams RENAME COLUMN tipo_helado TO type_ice_cream;
ALTER TABLE ice_creams RENAME COLUMN precio_helado TO price_ice_cream;
---para que no haya valores duplicados---
ALTER TABLE Customers
ADD CONSTRAINT unique_address UNIQUE (address_customer);
---restriccon de que el precio del helado tiene que ser mayor a cero---
ALTER TABLE ice_creams
ADD CONSTRAINT check_price CHECK (price_ice_cream > 0);
--- ·$%?"*/*·%???"(no funciono quien sabe que hicexd)---
ALTER TABLE ice_creams
ALTER COLUMN id_ice_cream SERIAL PRIMARY KEY;

