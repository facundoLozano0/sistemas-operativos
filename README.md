#  Toolkit de Administración Jr. - Ubuntu

# Descripción

Este proyecto forma parte de la Evidencia N°2 del módulo **Sistemas Operativos**. Se trata de un toolkit en **Bash** para la administración básica de sistemas Linux, desarrollado y probado en **Ubuntu**.

---

#  Funcionalidades Implementadas

### Módulo de Procesos (`procesos.sh`)
- **Opción 1:** Listado de procesos activos ordenados por uso de CPU.
- **Opción 2:** Ver información detallada de un proceso por su PID.
- **Opción 3:** Enviar señal `SIGTERM` a un proceso con confirmación previa.
- **Opción 4:** Buscar procesos por nombre utilizando `pgrep`.

#  Módulo de Memoria (`memoria.sh`)
1. Ver uso de memoria RAM y Swap con `free -h`.
2. Mostrar procesos que más memoria consumen.
3. (Opcional) Diagnóstico completo de memoria (con `vmstat` y `/proc/meminfo`).
---

#  Cómo Ejecutar

# 1. Dar permisos de ejecución:
```bash
chmod +x main_toolkit.sh procesos.sh
./main_toolkit.sh
