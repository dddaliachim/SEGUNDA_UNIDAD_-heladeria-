
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY NOT NULL,
    nombre_cliente VARCHAR(50),
    direccion_cliente VARCHAR(100),
    telefono_cliente VARCHAR(15)
);

CREATE TABLE Helados (
    id_helado INT PRIMARY KEY NOT NULL,
    sabor_helado VARCHAR(50),
    tipo_helado VARCHAR(50), -- Ejemplo: crema, agua, yogurt--
    precio_helado DECIMAL(10, 2)
);

CREATE TABLE sales (
    id_sale SERIAL PRIMARY KEY NOT NULL,
    id_customer INT,
    date_sale DATE,
    total_sale DECIMAL(10, 2),
    FOREIGN KEY (id_customer) REFERENCES customers(id_customer)
);
drop table sales;
CREATE TABLE sale_details (
    id_sale INT,
    id_ice_cream INT,
    quantity_ice_creams INT,
    price_unitary DECIMAL(10, 2),
    subtotal_sale DECIMAL(10, 2),
    FOREIGN KEY (id_sale) REFERENCES sales(id_sale),
    FOREIGN KEY (id_ice_cream) REFERENCES ice_creams(id_ice_cream),
    PRIMARY KEY (id_sale, id_ice_cream)
);