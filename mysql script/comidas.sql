CREATE TABLE categoria
(
 nombrec VARCHAR(50) PRIMARY KEY,
 descrip VARCHAR(50),
 encarg VARCHAR(50)
);

CREATE TABLE plato
(
 nombrep VARCHAR(50) PRIMARY KEY,
 descrip VARCHAR(50),
 nivel CHAR(1),
 precio DECIMAL(6,2) NOT NULL,
 nombrec VARCHAR(50),
 CONSTRAINT ck_nivel
 CHECK (nivel IN ('A','B','C')),
 CONSTRAINT fk_plato_categoria
 FOREIGN KEY (nombrec)
 REFERENCES categoria(nombrec)
);

CREATE TABLE ingred
(
 nombrei VARCHAR(50) PRIMARY KEY,
 unidades INTEGER NOT NULL,
 almacen VARCHAR(50)
);

CREATE TABLE utiliza
(
 nombrep VARCHAR(50),
 nombrei VARCHAR(50),
 cantidad INTEGER NOT NULL,
 CONSTRAINT pk_utiliza
 PRIMARY KEY(nombrep, nombrei),
 CONSTRAINT fk_utiliza_plato
 FOREIGN KEY (nombrep)
 REFERENCES plato(nombrep),
 CONSTRAINT fk_utiliza_ingred
 FOREIGN KEY (nombrei)
 REFERENCES ingred(nombrei)
);


