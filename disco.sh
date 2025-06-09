#!/bin/bash
# disco.sh - Gestión de uso del disco

while true; do
    clear
    echo "============================================"
    echo "        GESTIÓN DE DISCO - UBUNTU"
    echo "============================================"
    echo "1. Ver espacio usado en sistemas de archivos"
    echo "2. Analizar el tamaño de un directorio/archivo"
    echo "3. Listar archivos con permisos de un directorio"
    echo "0. Volver al menú principal"
    echo "--------------------------------------------"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo "Espacio usado en sistemas de archivos (df -h):"
            df -h
            ;;
        2)
            read -p "Ingrese la ruta del directorio o archivo: " ruta
            if [ -e "$ruta" ]; then
                du -sh "$ruta"
            else
                echo "La ruta no existe."
            fi
            ;;
        3)
            read -p "Ingrese el directorio: " dir
            if [ -d "$dir" ]; then
                ls -l "$dir"
            else
                echo "El directorio no existe."
            fi
            ;;
        0)
            break
            ;;
        *)
            echo "Opción inválida."
            ;;
    esac
    read -p "Presione Enter para continuar..."
done
