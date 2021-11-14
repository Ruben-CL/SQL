INSERT INTO categoria VALUES ('Primero', 'Ensaladas y sopas frías', 'Luis Fernández');
INSERT INTO categoria VALUES ('Segundo', 'Carnes y pescados', 'Pedro Lobo');
INSERT INTO categoria VALUES ('Postre', 'Elaboración casera', 'Andrés Torralbo');

INSERT INTO ingred VALUES ('Tomate', 25, 'Refrigerador');
INSERT INTO ingred VALUES ('Lechuga', 15, 'Refrigerador');
INSERT INTO ingred VALUES ('Magro de cerdo', 10, 'Congelador');
INSERT INTO ingred VALUES ('Merluza', 5, 'Congelador');
INSERT INTO ingred VALUES ('Azúcar', 8, 'Despensa');
INSERT INTO ingred VALUES ('Pollo', 30, 'Congelador');
INSERT INTO ingred VALUES ('Judías', 50, 'Despensa');


INSERT INTO plato VALUES ('Fabada', 'Fabada asturiana', 'A', 9, 'Primero');
INSERT INTO plato VALUES ('Estofado', 'Estofado de magro', 'A', 8, 'Segundo');
INSERT INTO plato VALUES ('Merluza plancha', 'Merluza', 'B', 12, 'Segundo');
INSERT INTO plato VALUES ('Ensalada casa', 'Lechuga y tomate', 'C', 5, 'Primero');
INSERT INTO plato VALUES ('Pollo asado', 'Pollo con patatas', 'B', 9, 'Segundo');
INSERT INTO plato VALUES ('Flan de huevo', 'Flan casero', 'C', 4, 'Postre');

INSERT INTO utiliza VALUES ('Fabada', 'Judías', 90);
INSERT INTO utiliza VALUES ('Pollo asado', 'Pollo', 100);
INSERT INTO utiliza VALUES ('Ensalada casa', 'Lechuga', 50);
INSERT INTO utiliza VALUES ('Ensalada casa', 'Tomate', 50);
INSERT INTO utiliza VALUES ('Estofado', 'Magro de cerdo', 60);
INSERT INTO utiliza VALUES ('Merluza plancha', 'Merluza', 90);
INSERT INTO utiliza VALUES ('Flan de huevo', 'Azúcar', 38);

