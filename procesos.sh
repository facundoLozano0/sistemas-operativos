#!/bin/bash


clear
echo "--------------------------------------------"
echo "      GESTIÓN BÁSICA DE PROCESOS EN UBUNTU"
echo "--------------------------------------------"
echo "1. Ver procesos activos (top simplificado)"
echo "2. Ver información de un proceso por PID"
echo "3. Enviar señal SIGTERM a un proceso por PID"
echo "4. Buscar proceso por nombre"
echo "0. Volver al menú principal"
echo "--------------------------------------------"
read -p "Seleccione una opción: " opcion_proc

case $opcion_proc in
    # Listado de procesos activos
    1)
        echo ""
        echo "Procesos activos (ordenados por uso de CPU):"
        ps -eo pid,comm,user,%cpu,%mem --sort=-%cpu | head -n 15
        ;;

    # Mostrar detalles de un proceso por PID
    2)
        read -p "Ingrese el PID del proceso: " pid
        if ps -p "$pid" > /dev/null; then
            echo ""
            echo "Información del proceso con PID $pid:"
            ps -p "$pid" -o pid,ppid,user,comm,%cpu,%mem,etime
        else
            echo "PID no válido o el proceso no está activo."
        fi
        ;;

    # Enviar señal SIGTERM a un proceso con confirmación
    3)
        read -p "Ingrese el PID del proceso a finalizar: " pid
        if ps -p "$pid" > /dev/null; then
            read -p "¿Desea enviar SIGTERM al proceso $pid? (s/n): " confirm
            if [[ "$confirm" == "s" || "$confirm" == "S" ]]; then
                kill -15 "$pid"
                echo "Señal SIGTERM enviada al proceso $pid."
            else
                echo "Operación cancelada por el usuario."
            fi
        else
            echo "PID inválido o proceso no encontrado."
        fi
        ;;

    # Buscar procesos por nombre usando pgrep
    4)
        read -p "Ingrese el nombre del proceso a buscar: " nombre_proc
        echo ""
        echo "Procesos que coinciden con '$nombre_proc':"
        pgrep -l "$nombre_proc"
        ;;     
    
    # siguiente
    *)
    
        echo "Opción no reconocida. Regresando al menú principal..."
        ;;
esac

