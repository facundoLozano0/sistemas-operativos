#!/bin/bash

while true; do
    clear
    echo "============================================"
    echo "     GESTIÓN DE USUARIOS Y GRUPOS"
    echo "============================================"
    echo "1. Crear nuevo usuario"
    echo "2. Eliminar usuario"
    echo "3. Agregar usuario a un grupo"
    echo "4. Listar usuarios del sistema"
    echo "5. Listar grupos del sistema"
    echo "0. Volver al menú principal"
    echo "--------------------------------------------"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            read -p "Ingrese el nombre del nuevo usuario: " usuario
            sudo adduser "$usuario"
            ;;
        2)
            read -p "Ingrese el nombre del usuario a eliminar: " usuario
            sudo deluser "$usuario"
            ;;
        3)
            read -p "Ingrese el nombre del usuario: " usuario
            read -p "Ingrese el grupo al que desea agregarlo: " grupo
            sudo usermod -aG "$grupo" "$usuario"
            ;;
        4)
            echo "Listado de usuarios (desde /etc/passwd):"
            cut -d: -f1 /etc/passwd
            ;;
        5)
            echo "Listado de grupos (desde /etc/group):"
            cut -d: -f1 /etc/group
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