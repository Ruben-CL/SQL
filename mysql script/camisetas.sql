CREATE TABLE categoria
(
 id integer PRIMARY KEY,
 nombre VARCHAR(50) NOT NULL
 );
 
 CREATE TABLE producto
 (
 id INTEGER PRIMARY KEY,
 categoria INTEGER NOT NULL,
 nombre VARCHAR(50) NOT NULL,
 descripcion VARCHAR(100),
 precio DECIMAL(65,2) NOT NULL,
 stock INTEGER NOT NULL,
 fecha DATE NOT NULL,
 CONSTRAINT fk_producto_categoria
 FOREIGN KEY(categoria)
 REFERENCES categoria(id) 
 );
 
 CREATE TABLE usuario
 (
  id INTEGER PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  rol VARCHAR(50) NOT NULL
 );
 
 CREATE TABLE pedido
 (
  id INTEGER PRIMARY KEY,
  usuario INTEGER NOT NULL,
  direccion VARCHAR(50) NOT NULL,
  localidad VARCHAR(50) NOT NULL,
  provincia VARCHAR(50) NOT NULL,
  coste DECIMAL(20,2) NOT NULL,
  estado VARCHAR(50) NOT NULL,
  fecha DATE NOT NULL,
  hora TIME NOT NULL,
  CONSTRAINT fk_pedido_usuario
  FOREIGN KEY(usuario)
  REFERENCES usuario(id)
   );
  CREATE TABLE contiene
(
  id_producto INTEGER,
  id_pedido INTEGER,
  unidades INTEGER NOT NULL,
  CONSTRAINT pk_contiene
  PRIMARY KEY(id_producto, id_pedido),
  CONSTRAINT fk_contiene_producto
  FOREIGN KEY(id_producto)
  REFERENCES producto(id),
  CONSTRAINT fk_contiene_pedido
  FOREIGN KEY(id_pedido)
  REFERENCES pedido(id)
);  
  