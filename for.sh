#!/bin/bash
lista[0]=enzo
lista[1]=ss
lista[2]=nn
lista[3]=faringe
echo '----------- laço for -----------'
for val in "${lista[*]}"
do
    echo $val
done
#o comando while como em outras linguagens é o while seguido por uma condição 
#e após isso ele faz que nem o for com o do e o done
#script simples que conta de 1 a 10, só para demonstrar 
echo '----------- laço while -----------'
nmr=0
while [ "$nmr" -le 10 ]
do
    echo "$nmr"
    nmr=$[ "$nmr" + 1 ]
done
#e por ultimo tem o comando until que vai fazer o que estiver no bloco 
#do/done enquanto o que estiver nele for falso 
echo '----------- laço until -----------'
nmr2=50
until [ $nmr2 -eq 40 ]
do
    echo $nmr2 
    nmr2=$[ $nmr2 - 5 ]
done
echo '----------- laço for estilo C -----------'
for ((i=0;i<=6; i++))
do 
    echo $i
done