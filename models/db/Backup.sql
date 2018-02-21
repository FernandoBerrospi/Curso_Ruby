CREATE TABLE cargos
(
    cargo_id    SERIAL NOT NULL
        CONSTRAINT cargos_primary
        PRIMARY KEY,
    descripcion VARCHAR(60)
);

CREATE TABLE empleados
(
    empleado_id SERIAL  NOT NULL
        CONSTRAINT empleados_primary
        PRIMARY KEY,
    nombres     VARCHAR(60),
    apellidos   VARCHAR(60),
    direccion   VARCHAR(60),
    cargo_id    INTEGER NOT NULL
        CONSTRAINT r_1
        REFERENCES cargos
);

CREATE INDEX r_1
    ON empleados (cargo_id);

CREATE TABLE login
(
    login_id   SERIAL      NOT NULL
        CONSTRAINT login_primary
        PRIMARY KEY,
    usuario_id INTEGER,
    fecha      TIMESTAMP   NOT NULL,
    codigo     VARCHAR(60) NOT NULL
);

CREATE INDEX r_2
    ON login (usuario_id);

CREATE TABLE usuarios
(
    usuario_id SERIAL NOT NULL
        CONSTRAINT usuarios_primary
        PRIMARY KEY,
    nombres    VARCHAR(100),
    apellidos  VARCHAR(100),
    email      VARCHAR(100),
    password   VARCHAR(100)
);

CREATE UNIQUE INDEX email
    ON usuarios (email);

ALTER TABLE login
    ADD CONSTRAINT r_2
FOREIGN KEY (usuario_id) REFERENCES usuarios;


-- CARGOS
INSERT INTO cargos(descripcion) VALUES('Jefe de Area'),('Encargado de Almacen'),('Practicante')
