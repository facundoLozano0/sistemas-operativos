while true; do
    clear
    echo "============================================"
    echo "      GESTIÓN DE MEMORIA - UBUNTU"
    echo "============================================"
    echo "1. Ver uso de memoria (RAM y Swap)"
    echo "2. Ver uso de memoria por procesos"
    echo "0. Volver al menú principal"
    echo "--------------------------------------------"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            echo "Uso de memoria general:"
            free -h
            ;;
        2)
            echo "Top 10 procesos que más memoria usan:"
            ps aux --sort=-%mem | head -10
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
