#!bin/bash
ls 
echo $? #isso aqui vai voltar o código do status da saída do comando 
#vai retornar 0 pq deu tudo certo 
#tabela:
    #0-->deu tudo certo 
    #1-->erro desconhecido 
    #126-->comando não pode ser executado(permissões)
    #127--> não encontrado
    #130-->comando finalizado com Ctrl+c