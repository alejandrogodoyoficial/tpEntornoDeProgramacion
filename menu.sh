#!/bin/bash
submenu(){
text=$1
echo -ne "
1) Contador de palabras        4) Contador de oraciones
2) Contador uso de palabras    5) Contador de lineas en blanco
3) Identificador de nombres    0) Volver al menú principal
C) Limpiar pantalla
Eliga una opción: "
read option
case $option in
        1) ./Scripts/statsWords.sh $text ; submenu $text ;;
        2) ./Scripts/statsUsageWords.sh $text ; submenu $text;;
        3) ./Scripts/findNames.sh $text ; submenu $text;;
        4) ./Scripts/statsSentences.sh $text ; submenu $text;;
        5) ./Scripts/blankLinesCounter.sh $text ; submenu $text;;
        0) clear ; menu ;;
        C) clear ; submenu $text;;
        *) echo -e "Opcion incorrecta $option" ; submenu $text;;
esac
}

menu(){
echo "Seleccione un TEXTO de text por favor. Si quiere salir pulse CTRL + C"
ls ./text
read
if [ -r ./text/$REPLY ] && [ -f ./text/$REPLY ]
then
    submenu ./text/$REPLY
else
    echo "No es un archivo de texto simple, no tiene permisos de lectura o no existe."
fi
}

menu
