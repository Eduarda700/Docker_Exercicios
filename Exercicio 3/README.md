# 🚀 Listando e Removendo Containers Docker

Passo a passo para **listar containers**, **parar containers em execução** e **remover containers específicos** utilizando comandos Docker.

---

## 📋 1. Liste todos os containers

Use o comando abaixo para listar **todos os containers**, incluindo os que estão parados:

```bash
docker ps -a
```

---

## 🗑️ 2. Remova um container parado

Para remover um container, use o comando `docker rm` seguido do **ID** ou **nome do container**.  
No exemplo abaixo, estamos removendo um container Ubuntu que está parado:

```bash
docker rm 445e3d58d909
```

---

## 🛑 3. Pare um container em execução

Para parar um container ativo, use o comando `docker kill` seguido do ID.  
No exemplo, estamos parando um container com Nginx em execução:

```bash
docker kill 36d433b72d45
```

---

✅ Após esses comandos, os containers removidos não aparecerão mais em `docker ps -a` e os containers parados deixarão de ocupar recursos do sistema.
