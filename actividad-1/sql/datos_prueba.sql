USE gestion_veterinaria;

INSERT INTO duenos (nombre_completo, email, telefono) VALUES
('Juan Fernando Hoyos', 'juan.hoyos@email.com', '3115551234'),
('Camila Andrea Restrepo', 'camila.res@email.com', '3004445678'),
('Mateo Bermúdez', 'mateo.ber@email.com', '3159998877');

INSERT INTO mascotas (nombre, especie, fecha_nacimiento, id_dueno) VALUES
('Lucas', 'Perro', '2021-04-12', 1),
('Luna', 'Gato', '2023-08-19', 2),
('Zeus', 'Ave', '2025-01-10', 3);

INSERT INTO veterinarios (tarjeta_profesional, nombre_completo, especialidad) VALUES
('TP-98765-CO', 'Dra. Diana Carolina Vélez', 'Medicina Felina'),
('TP-43210-CO', 'Dr. Carlos Mario Ortiz', 'Cirugía y Especies Menores');

INSERT INTO citas_medicas (fecha_hora, id_mascota, tarjeta_veterinario, costo_servicio, diagnostico) VALUES
('2026-06-01 09:30:00', 1, 'TP-43210-CO', 85000.00, 'Control postoperatorio satisfactorio. Se retiran puntos.'),
('2026-06-02 14:00:00', 2, 'TP-98765-CO', 60000.00, 'Vacunación triple felina aplicada. Mascota sana.'),
('2026-06-05 11:15:00', 3, 'TP-43210-CO', 45000.00, 'Revisión de plumaje por estrés. Se receta cambio de dieta.');
