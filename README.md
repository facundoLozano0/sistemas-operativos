# Toolkit de Administración Jr. - Ubuntu

## Descripción

Este proyecto forma parte de la Evidencia N°2 del módulo **Sistemas Operativos**. Se trata de un toolkit en **Bash** para la administración básica de sistemas Linux, desarrollado y probado en **Ubuntu**.

---

## Funcionalidades Implementadas

### Módulo de Procesos (`procesos.sh`)
- **Opción 1:** Listado de procesos activos ordenados por uso de CPU.
- **Opción 2:** Ver información detallada de un proceso por su PID.
- **Opción 3:** Enviar señal `SIGTERM` a un proceso con confirmación previa.
- **Opción 4:** Buscar procesos por nombre utilizando `pgrep`.

### Módulo de Memoria (`memoria.sh`)
- Ver uso de memoria RAM y Swap con `free -h`.
- Mostrar procesos que más memoria consumen.
- (Opcional) Diagnóstico completo de memoria (con `vmstat` y `/proc/meminfo`).

### Módulo de Disco (`disco.sh`)
- Ver espacio usado en sistemas de archivos montados (`df -h`).
- Analizar el tamaño ocupado por un directorio o archivo (`du -sh <ruta>`).
- Listar archivos de un directorio con sus permisos (`ls -l <directorio>`).
- 
### Módulo de Usuarios y Grupos (`usuarios_grupos.sh`)
- Crear y eliminar usuarios.
- Agregar usuarios a grupos.
- Listar usuarios del sistema (`/etc/passwd`).
- Listar grupos del sistema (`/etc/group`).

### Módulo de Seguridad (`seguridad.sh`)
- Ver usuarios conectados (`who`).
- Ver permisos de archivos.
- Consultar `/etc/passwd`.
- Ver historial de accesos (`last`).
---

## Cómo Ejecutar

1. Dar permisos de ejecución:
```bash
chmod +x main_toolkit.sh procesos.sh memoria.sh disco.sh
./main_toolkit.sh

