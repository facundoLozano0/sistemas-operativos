#!/bin/bash

while true; do
    clear
    echo "============================================"
    echo "         SEGURIDAD DEL SISTEMA"
    echo "============================================"
    echo "1. Ver usuarios conectados actualmente"
    echo "2. Ver permisos de un archivo"
    echo "3. Mostrar contenido de /etc/passwd"
    echo "4. Ver últimos intentos de login (last)"
    echo "0. Volver al menú principal"
    echo "--------------------------------------------"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo "Usuarios conectados:"
            who
            ;;
        2)
            read -p "Ingrese la ruta del archivo: " archivo
            ls -l "$archivo"
            ;;
        3)
            echo "Contenido de /etc/passwd (usuarios):"
            less /etc/passwd
            ;;
        4)
            echo "Últimos inicios de sesión:"
            last | head -n 10
            ;;
        0)
            break
            ;;
        *)
            echo "Opción inválida."
            ;;
    esac
    echo ""
    read -p "Presione Enter para continuar..."
done