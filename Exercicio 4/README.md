Criando um Dockerfile para uma aplicação simples em Python

Crie um Dockerfile para uma aplicação Flask que retorna uma mensagem ao acessar um endpoint, para isso utilize o projeto Docker Flask

1 - baixe os arquivos compose,requirement.txt e app.py

2 - crie um Dockerfile com uma imagem phyton, a minha escolhida foi phyton:3.13 alpine linux, com o parametro --platform=$BUILDPLATFORM para garantir garante que a imagem seja construída para a plataforma de build atual

3 - O WORKDIR /app define o diretório de trabalho dentro do contêiner como /app e COPY requirements.txt /app copia o arquivo requirements.txt para o diretório /app no contêiner.

4 - RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt Essa instrução instala as dependências listadas em requirements.txt utilizando o pip, o --mount=type=cache permite que o cache do pip seja reutilizado entre builds, acelerando o processo de instalação.
5 - COPY app.py /app

ENTRYPOINT ["python3"]
CMD ["app.py"]


EXPOSE 8000

use docker compose -d para montar o projeto 
![Captura de Tela (38)](https://github.com/user-attachments/assets/f635b578-c57d-4808-9b2d-ca9e4fb56390)

![Captura de Tela (39)](https://github.com/user-attachments/assets/0a1e0029-d82c-4414-8178-040c0aaaed6c)

