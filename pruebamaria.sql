--Creación de las tablas de las pruebas de MariaDB
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  email VARCHAR(100)
);

CREATE TABLE productos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  precio DECIMAL(10, 2)
);

CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT,
  producto_id INT,
  cantidad INT
);

--INSERTS de las pruebas para el uso de MariaDB
INSERT INTO usuarios (nombre, email) VALUES
  ('Juan Pérez', 'juan@example.com'),
  ('María González', 'maria@example.com'),
  ('Carlos Sánchez', 'carlos@example.com');

INSERT INTO productos (nombre, precio) VALUES
  ('Producto 1', 19.99),
  ('Producto 2', 29.99),
  ('Producto 3', 9.99);

INSERT INTO pedidos (usuario_id, producto_id, cantidad) VALUES
  (1, 1, 2),
  (2, 2, 1),
  (3, 3, 3);
