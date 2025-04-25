# 🚀 Criando uma imagem personalizada com um servidor web e arquivos estáticos

Passo a passo de como executar um container Docker com a imagem do **Nginx**, substituindo a página padrão por uma **landing page do Creative Tim** para criar uma página moderna hospedada no container.



---

## 📥 1. Baixe os arquivos da Landing Page

Acesse o repositório e faça o download dos arquivos:

🔗 [Material-kit]((https://github.com/creativetimofficial/material-kit))

---

## 🐳 2. Crie o `Dockerfile`

Crie um arquivo chamado `Dockerfile` com o seguinte conteúdo:

```dockerfile
FROM nginx
RUN rm -rf /usr/share/nginx/html/*

COPY material-kit-master . /usr/share/nginx/html/ 

EXPOSE 8080
```

## 🛠️ 3. Construa a imagem

Execute o comando abaixo no terminal para construir a imagem com o nome `meu-site-Material`:

```bash
docker build -t meu-site-Material .
```


## ▶️ 4. Rode o container

Execute o container e mapeie a porta 8080 do seu computador para a porta 80 do container:

```bash
docker run -d -p 8080:80 meu-site-Material
```


## 🌐 5. Visualize no navegador

Abra o navegador e acesse:

```bash
(http://localhost:8080)
```
Você verá a landing page renderizada corretamente.

## 📸 Resultado: 

![Captura de Tela (40)](https://github.com/user-attachments/assets/83bcaa73-7f85-44c7-ab51-4f106206af05)
