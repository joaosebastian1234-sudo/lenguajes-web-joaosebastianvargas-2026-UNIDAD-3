CREATE DATABASE IF NOT EXISTS gestion_veterinaria;
USE gestion_veterinaria;

CREATE TABLE duenos (
    id_dueno INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE mascotas (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_dueno INT NOT NULL,
    CONSTRAINT fk_mascotas_duenos 
        FOREIGN KEY (id_dueno) REFERENCES duenos(id_dueno) 
        ON DELETE RESTRICT
);

CREATE TABLE veterinarios (
    tarjeta_profesional VARCHAR(50) PRIMARY KEY,
    nombre_completo VARCHAR(150) NOT NULL,
    especialidad VARCHAR(100) NOT NULL
);

CREATE TABLE citas_medicas (
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    fecha_hora DATETIME NOT NULL,
    id_mascota INT NOT NULL,
    tarjeta_veterinario VARCHAR(50) NOT NULL,
    costo_servicio DECIMAL(10,2) NOT NULL,
    diagnostico TEXT NOT NULL,
    CONSTRAINT fk_citas_mascotas 
        FOREIGN KEY (id_mascota) REFERENCES mascotas(id_mascota) 
        ON DELETE RESTRICT,
    CONSTRAINT fk_citas_veterinarios 
        FOREIGN KEY (tarjeta_veterinario) REFERENCES veterinarios(tarjeta_profesional) 
        ON DELETE RESTRICT
);
