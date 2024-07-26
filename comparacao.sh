#!/bin/bash
#as comparações aqui não são feitas utilizando os simbolos de > e <, pois eles representam os comandos para 
#colocar algo dentro dos arquivos e tals, então ao ínves disso no script shell,
#utiliza-se a notação:
    # -eq para equal 
    # -gt para greater than
    # -ge para greater than or equal 
    # -lt para less than
    # -le para less than or equal
    # -ne para se for diferente os valores
echo 'digite a sua idade'
read idade 
if [ $idade -ge 18 ]; then
    if [ $idade -eq 18 ]; then
        echo 'você acabou de completar 18, pode ser preso'
    else
        echo 'você tem mais que 18 anos'
    fi
else
    echo 'você é de menor'
fi
#agr a comparação com strings funciona com > e <, sendo que 
    # str1 = str2 --> fala que as duas strings são iguais
    # str1 > str2 --> fala compara se uma string é maior que a outra --> ordem alfabética fábio < maria 
    # -n str1 --> comprimento maior que zero # -z str1 comprimento igual a 0
echo 'digite o seu nome'
read nome
if [ -n "$nome" ]; then
    if [ "$nome" = 'Enzo' ] || [ "$nome" = 'enzo' ]; then
        echo 'eita nome bão'
    elif [ "$nome" = 'ccbbeqeqbaba' ]; then
        echo -e '\033[31m'  # Inicia a cor vermelha
        echo '         uuuuuuu'
        echo '     uu$$$$$$$$$$$uu'
        echo '  uu$$$$$$$$$$$$$$$$$uu'
        echo ' u$$$$$$$$$$$$$$$$$$$$$u'
        echo 'u$$$$$$$$$$$$$$$$$$$$$$$u'
        echo 'u$$$$$$$$$$$$$$$$$$$$$$$$$u'
        echo 'u$$$$$$"   "$$$"   "$$$$$$u'
        echo '"$$$$"      u$u       $$$$"'
        echo ' $$$u       u$u       u$$$'
        echo ' $$$u      u$$$u      u$$$'
        echo '  "$$$$uu$$$   $$$uu$$$$"'
        echo '   "$$$$$$$"   "$$$$$$$"'
        echo '     u$$$$$$$u$$$$$$$u'
        echo '      u$"$"$"$"$"$"$u'
        echo '      $$u$ $ $ $ $u$$'
        echo '       $$$$$u$u$u$$$'
        echo '        "$$$$$$$$$"'
        echo '           """""'
        echo -e '\033[0m' #volta à cor padrão
    else
        echo 'nome meio paia, mas tudo certo'
    fi
else
    echo 'execute dnv e digite algo'
fi