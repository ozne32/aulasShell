#!/bin/bash
#as funções em shell script funcionam de uma maneira bem intuitiva, basta declarar
#um nome e após colocar (){} para definir, e logo em seguida colocar a lógica daquela função

menu(){
    PS3='Escolha uma das opções...'
    select menuzinho in "iniciar python3" "iniciar nano" "sair"; do
        case "$menuzinho" in 
            "iniciar python3") python3;; 
            "iniciar nano")
                echo 'nome do arquivo + extensão'
                read arquivo
                nano $arquivo;;
            "sair") exit 0;;
        esac
    done
}
menu