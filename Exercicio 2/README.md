Criando e rodando um container interativo

Inicie um container Ubuntu e interaja com o terminal dele. Teste um script Bash que imprime logs do sistema ou instala pacotes de forma interativa.

1 - iniciando um container Ubuntu, "-it" faz com que ele continue a execução e permiita interação com o terminal

docker run -it ubuntu

2 - criar um arquivo bash que instale pacotes, alterando a permissão dele para permitir a execução

nano meu_script.sh

chmod +x meu_script.sh
./meu_script.sh

3 - apos download, verifique se esta funcional, caso ao conrario inicie o serviço

sevice nginx status

service ngix start
