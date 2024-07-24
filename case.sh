#!bin/sh
#aqui é um rápido if para verificar se o usuário que está executando o script etá rodando como root
if [ $USER != "root" ]; then
    echo 'necessita rodar como root'
    exit 1
fi
#de forma análoga ao if, você vai declarar e dps para fechar você vai escrever o nome ao contrário
#estrutura case $variavel in, opçõess;;--> importante fechar com dois parenteses
echo "
1) Atualize o computador
2) Instale um programa
3) Remova um programa
"
read opcao 
case "$opcao" in
    1) apt update;;
    2) echo 'qual programa deseja instalar1' 
        read programa
        apt install $programa 
        ;;
    3) echo 'qual programa deseja remover'
        read programa 
        apt remove $programa
    ;;
    #importante falar que neste caso é utilizado os números, porém poderia ser qualquer coisa seguida
    #de um ) 
esac