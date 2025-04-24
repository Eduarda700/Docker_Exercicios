3. Listando e removendo containers

Liste todos os containers em execução e parados, pare um container em execução e remova um container específico.

1 para listar todos os containers use os seguintes comando

docker ps -a

2 - use o comando remove e o id do container para removelo, no exemplo removi um container ubuntu parado 

docker remove 445e3d58d909

3 - use o comando kill e o id do container para para-lo, no exemplo parei um container nginx em execução 

docker remove 36d433b72d45
