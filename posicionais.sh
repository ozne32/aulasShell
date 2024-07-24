#!/bin/bash

func_help(){
    echo "
        --help  para ajuda 
        iniciaNacional para iniciar a aplicação
    "
}
func_inicia_nacional(){
    cd /home/alibabapenguim/nacionalFinal/ #caminho para a sua aplicação docker
    docker-compose up -d
    echo 'está rodando, acesse a aplicação em localhost:8080'
}
func_para_nacional(){
    cd /home/alibabapenguim/nacionalFinal/ #caminho para sua aplicação docker
    docker-compose down
    echo 'containers derrubados'
}
if [ $# -eq 0 ]; then
    func_help
fi

case $1 in 
    --help) func_help;;
    iniciaNacional) func_inicia_nacional;;
    paraNacional) func_para_nacional;;
    *) echo 'digite uma das opções'
esac