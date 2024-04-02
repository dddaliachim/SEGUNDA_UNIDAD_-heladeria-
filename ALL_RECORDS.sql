INSERT TO HELADOS IN 

INSERT INTO ice_creams (id_ice_cream, flavor_ice_cream, type_ice_cream,price_ice_cream )
VALUES ('10','cafe', 'crema' ,30);

SELECT * FROM ice_creams;
--- ---
INSERT INTO customers (id_customer, name_customer, address_customer,customer_phone )
VALUES ('1','Ricardo Garcia', 'poligono sur' ,9982035446);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('2', 'Ana Martínez', 'calle 123', 987654321);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('3', 'Juan Pérez', 'avenida principal', 123456789);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('4', 'María Rodríguez', 'calle 456', 456789012);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('5', 'Luis López', 'avenida central', 789012345);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('6', 'Laura Sánchez', 'plaza mayor', 456123789);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('7', 'Pedro Martín', 'calle principal', 123789456);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('8', 'Sofía García', 'avenida secundaria', 789456123);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('9', 'Diego González', 'paseo marítimo', 789123456);

INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES ('10', 'Elena Hernández', 'callejón oscuro', 123456789);

SELECT * FROM customers;
--- ---
INSERT TO sales(id_sale,date_sale, total_sale)
VALUES (1,03/14/24,);

SELECT * FROM customers;

--- ---
UPDATE customers
SET  customer_phone= '987654321'
WHERE id_customer = 5;
--- ---
DELETE FROM customers
WHERE id_customer = 3;
--- ---
INSERT INTO customers (id_customer, name_customer, address_customer, customer_phone)
VALUES (2, 'Anna Martinez', 'calle 123','987654321' )
ON CONFLICT (address_customer)
DO UPDATE SET name_customer = 'Anna Martin', address_customer = 'calle administradores',customer_phone = '9982903362';
--- ---
SELECT constraint_name
FROM information_schema.table_constraints
WHERE table_name = 'ice_creams' AND constraint_type = 'PRIMARY KEY';
