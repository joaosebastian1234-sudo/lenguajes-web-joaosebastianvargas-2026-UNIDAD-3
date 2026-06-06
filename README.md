# Actividad Evaluativa 1 - Capa de Persistencia
**Estudiante:** Joao Sebastian Vargas
**Institución:** Fundación Universitaria María Cano

En este repositorio subí el script SQL con las tablas de la veterinaria y los diagramas conceptual y lógico que armé en Draw.io.

---

## 📌 Justificación Técnica del Diseño

* **Uso de DECIMAL(10,2)**: Elegí este tipo de dato para el campo `costo_servicio` porque al manejar dinero no se pueden permitir errores de redondeo. Tipos como FLOAT o REAL suelen perder decimales en operaciones matemáticas, mientras que DECIMAL asegura que los cobros de las citas sean exactos.
* **Restricción ON DELETE RESTRICT**: Apliqué esta regla en todas las llaves foráneas (`FK`). La razón es proteger los datos: si un dueño o una mascota ya tienen citas registradas en el historial, el sistema no debe dejar que los borren por error, ya que se perdería la información clínica y legal de la veterinaria.
* **Llaves INT AUTO_INCREMENT**: Las usé para que el sistema genere automáticamente los códigos de identificación (`id_dueno`, `id_mascota`, `id_cita`). Esto facilita el orden en las tablas y hace que las búsquedas en la base de datos sean mucho más rápidas a medida que crezca el número de registros.
