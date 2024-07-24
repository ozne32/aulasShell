#!bin/sh

#as condicionais em bash funcionam assim: if[ condicional ]; then fi
#exemplo:
echo 'coloque o nome da pasta que quer criar'
read pasta
if [ "$pasta" = "pasta" ]; then
    echo 'a pasta não pode se chamar pasta'
elif [ ! -e "$pasta" ]; then
    mkdir $pasta
else
    echo 'pasta já foi criada'
fi