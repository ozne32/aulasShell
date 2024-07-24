#!/bin/sh 
echo 'coloque o primeiro número'
read n1
echo 'coloque o segundo número'
read n2
echo 'qual operação você deseja fazer ?'
read op
if [ "$op" = '+' ]; then
    let res=n1+n2
    echo "$n1$op$n2=$res"
elif [ "$op" = '/' ]; then
    let res=n1/n2
    echo "$n1$op$n2=$res"
elif [ "$op" = '-' ]; then
    let res=n1-n2
    echo "$n1$op$n2=$res"
elif [ "$op" = '*' ]; then
    let res=n1*n2
    echo "$n1$op$n2=$res"
else 
    echo 'insira uma operação válida'
fi