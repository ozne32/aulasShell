#!/bin/bash
#além do uso normal do read, dá para fazer outras coisas, como 
#colocar tempo para a pessoa responder 
echo '------- timeout -------'
echo 'digite o seu nome' 
if read -t 2 nome; then
    echo $nome
else
    echo 'você demorou muito para digitar'
fi
#colocar um número mínimo de caracteres
echo '------- nmr minimo de caracteres -------'
echo 'deseja prosseguir com a ação?'
read -n1 resposta
case $resposta in
    S | s) echo 'você prosseguiu, que legal';;
    N | n) 
        echo 'fechando programa'
        exit 126 ;;
    *) echo 'digite S/N';;
esac
echo '------- digitar a senha -------'
echo 'digite a senha:'
read -s senha
echo 'confirme a senha:'
read -s senhaConfirmada
if [ $senha = $senhaConfirmada ]; then
    echo 'deu tudo certo, quer que eu mostre a sua senha para conferir ? (S/N)'
    read -n1 resposta2
    case $resposta2 in
        S | s) echo 
                echo sua senha é $senha ;;
        N | n) exit 0 ;;
    esac
else
    echo 'senha errada'
fi