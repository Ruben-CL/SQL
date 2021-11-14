CREATE TABLE director
(
 nombre VARCHAR(50) PRIMARY KEY,
 nacion VARCHAR(50),
 fecnac DATE
);

CREATE TABLE pelicula
(
 titulo VARCHAR(50) PRIMARY KEY,
 agno INTEGER NOT NULL,
 nacion VARCHAR(50),
 idioma VARCHAR(50),
 color CHAR(1),
 resumen VARCHAR(400),
 observ VARCHAR(50),
 director VARCHAR(50) NOT NULL,
 CONSTRAINT ch_color
 CHECK (color IN ('S','N')),
 CONSTRAINT fk_pelicula_director
 FOREIGN KEY (director)
 REFERENCES director(nombre)
);

CREATE TABLE actor
(
 nombre VARCHAR(50) PRIMARY KEY,
 nacion VARCHAR(50)
);
 
CREATE TABLE reparto
(
 actor VARCHAR(50),
 titulo VARCHAR(50),
 personaje VARCHAR(50) NOT NULL,
 CONSTRAINT pk_reparto
 PRIMARY KEY(actor, titulo),
 CONSTRAINT fk_reparto_actor
 FOREIGN KEY(actor)
 REFERENCES actor(nombre),
 CONSTRAINT fk_reparto_pelicula
 FOREIGN KEY(titulo)
 REFERENCES pelicula(titulo)
);


