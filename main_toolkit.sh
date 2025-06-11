while true; do
    clear
    echo "============================================"
    echo "  TOOLKIT DE ADMINISTRACIÓN JR - UBUNTU"
    echo "============================================"
    echo "1. Gestión de procesos"
    echo "2. Ver uso de Memoria"
    echo "3. Ver información del Disco"
    echo "4. Gestión de Usuarios"
    echo "5. Seguridad del Sistema"
    echo "0. Salir"
    echo "--------------------------------------------"
    read -p "Seleccione una opción: " opcion

    case $opcion in

        1)
            bash procesos.sh
            read -p "Presione Enter para continuar..."
            ;;

        2)
            bash memoria.sh
            read -p "Presione Enter para continuar..."
            ;;

        3)
            bash disco.sh
            read -p "Presione Enter para continuar..."
            ;;

        4)
            bash usuarios_grupos.sh
            read -p "Presione Enter para continuar..."
            ;;

        5)
            bash seguridad.sh
            read -p "Presione Enter para continuar..."
            ;;
        0)
            echo "Gracias por utilizar el toolkit. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción inválida. Intente de nuevo."
            sleep 2
            ;;
    esac
done
