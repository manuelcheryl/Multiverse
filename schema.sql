-- Esquema de base de datos para Multiverse

CREATE TABLE universo (
    id_universo INTEGER PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    tipo VARCHAR(80) NOT NULL
);

CREATE TABLE personaje (
    id_personaje INTEGER PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    descripcion TEXT,
    nivel_peligrosidad INTEGER NOT NULL,
    id_universo INTEGER NOT NULL,
    CONSTRAINT fk_personaje_universo
        FOREIGN KEY (id_universo) REFERENCES universo(id_universo)
);

CREATE TABLE poder (
    id_poder INTEGER PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    descripcion TEXT
);

CREATE TABLE personaje_poder (
    id_personaje INTEGER NOT NULL,
    id_poder INTEGER NOT NULL,
    PRIMARY KEY (id_personaje, id_poder),
    CONSTRAINT fk_pp_personaje
        FOREIGN KEY (id_personaje) REFERENCES personaje(id_personaje),
    CONSTRAINT fk_pp_poder
        FOREIGN KEY (id_poder) REFERENCES poder(id_poder)
);

-- Datos de ejemplo
INSERT INTO universo (id_universo, nombre, tipo) VALUES
(1, 'Marvel', 'Cómics / Películas'),
(2, 'Naruto', 'Anime');

INSERT INTO personaje (id_personaje, nombre, descripcion, nivel_peligrosidad, id_universo) VALUES
(1, 'Spider-Man', 'Héroe con habilidades arácnidas', 3, 1),
(2, 'Iron Man', 'Héroe equipado con una armadura tecnológica', 4, 1);

INSERT INTO poder (id_poder, nombre, descripcion) VALUES
(1, 'Sentido arácnido', 'Percepción anticipada del peligro'),
(2, 'Vuelo supersónico', 'Desplazamiento aéreo a alta velocidad');

INSERT INTO personaje_poder (id_personaje, id_poder) VALUES
(1, 1),
(2, 2);
