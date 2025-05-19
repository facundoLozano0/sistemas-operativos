while true; do
    clear
    echo "============================================"
    echo "  TOOLKIT DE ADMINISTRACIÓN JR - UBUNTU"
    echo "============================================"
    echo "1. Gestión de procesos"
    echo "0. Salir"
    echo "--------------------------------------------"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            bash procesos.sh
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
