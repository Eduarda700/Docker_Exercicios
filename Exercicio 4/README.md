# 🚀 Criando um Dockerfile para uma Aplicação Flask em Python

Passo a passo para criar um **Dockerfile** que empacota uma aplicação simples com **Flask**, usando a imagem **Python:3.13-alpine** e recursos de cache para instalação eficiente de dependências.

---

## 📥 1. Baixe os arquivos do projeto

Faça o download dos arquivos necessários:

- `docker-compose.yml`
- `requirements.txt`
- `app.py`

Você pode usar o repositório de exemplo [Docker Flask](https://github.com/docker-library/python/tree/master/3.13/alpine).

---

## 🐳 2. Crie o Dockerfile

Crie um arquivo chamado `Dockerfile` com o conteúdo abaixo:

```dockerfile
# Use a imagem Python com Alpine Linux e defina a plataforma de build
FROM --platform=$BUILDPLATFORM python:3.13-alpine

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie o arquivo de dependências
COPY requirements.txt /app

# Instale as dependências usando cache para acelerar builds
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

# Copie o código da aplicação
COPY app.py /app

# Defina o ponto de entrada e o comando padrão
ENTRYPOINT ["python3"]
CMD ["app.py"]

# Exponha a porta usada pela aplicação Flask
EXPOSE 8000
```

---

## ▶️ 3. Rode a aplicação com Docker Compose

Use o seguinte comando para montar e iniciar o projeto em modo desanexado:

```bash
docker compose up -d
```
![Captura de Tela (38 5)](https://github.com/user-attachments/assets/c10b7810-fb8c-4405-b491-f574a3c9365b)

---

## 🌐 4. Acesse a aplicação

Abra o navegador e acesse:

```bash
http://localhost:8000
```

Você verá a mensagem retornada pelo endpoint Flask.

![Captura de Tela (39)](https://github.com/user-attachments/assets/1e0579d4-b37b-4026-9682-e4193b93b4ae)

---

✅ Agora você tem uma aplicação Flask empacotada em um container Docker leve e eficiente!



