#!/bin/bash
#caixa msg box
func_help(){
    echo '
        msgbox mostra a caixa de mensagem
        yesno mostra a caixa de yes e no
        yesnoP mostra a caixa de yes no personalizada
    '
}
func_msgbox(){
    whiptail --title "Testando a caixa de texto" --msgbox 'essa é uma caixa normal' --fb 10 50
}
func_yesno(){
    #caixa do yes e no, precisa do condicional né
    if whiptail --title "Testando a caixa de YES/NO" --yesno 'escolha entre ss e não' --fb 10 50; then
        echo você escolheu ss, código de saída é: $?
    else
        echo você escolheu não, código de saída é: $?
    fi
}
func_yesnoP(){
    #basicamente a msm coisa que a função do sim ou não, porém com a personalização dos botãos
    #detalhe que o código de status é a msm coisa
    if whiptail --title "Testando a caixa de YES/NO" --yes-button 'gato' --no-button 'peixe' --yesno 'escolha entre ss e não' --fb 10 50; then
        echo " /\\_/\\"
        echo "( o.o )"
        echo " > ^ <"
        echo 'lembrando que o status do código continua sendo o do sim:'
        echo $?
    else  
        echo " ><(((('>"
        echo "    ><((('>"
        echo "       ><(('>"
        echo 'lembrando que o status do código continua sendo o do não:'
        echo $?
    fi
}
func_inputBox(){
    #você tem que declarar a variável que vai receber o valor que vai ser colocado no input 
    nome=$(whiptail --title 'Caixa Input' --inputbox 'digite o seu nome: ' --fb 10 60 3>&1 1>&2 2>&3 )
    statussaida=$?
    if [ $statussaida -eq 0 ];then
        echo o nome do usuário é: $nome
    else 
        echo 'usuário apertou em cancelar'
    fi
}
if [ -z $1 ]; then
    func_help
fi
case $1 in 
    msgbox | msg) func_msgbox;;
    yesno | yn) func_yesno;;
    yesnoP | ynP) func_yesnoP;;
    inputB | ib) func_inputBox;;
esac