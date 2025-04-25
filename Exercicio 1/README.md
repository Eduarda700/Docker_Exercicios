# 🚀 Rodando um Container com Nginx e TailwindCSS

Passo a passo de como executar um container Docker com a imagem do **Nginx**, substituindo a página padrão por uma **landing page estática** desenvolvida com **TailwindCSS**.

---

## 📥 1. Baixe os arquivos da Landing Page

Acesse o repositório e faça o download dos arquivos `index.html` e `hero.png`:

🔗 [Tailwind Toolbox - Landing Page](https://github.com/tailwindtoolbox/Landing-Page)

---

## 🐳 2. Crie o `Dockerfile`

Crie um arquivo chamado `Dockerfile` com o seguinte conteúdo:

```dockerfile
FROM nginx

RUN rm -rf /usr/share/nginx/html/*

COPY index.html hero.png /usr/share/nginx/html/

EXPOSE 80
```

## 🛠️ 3. Construa a imagem

Execute o comando abaixo no terminal para construir a imagem com o nome `meu-site-tailwind`:

```bash
docker build -t meu-site-tailwind .
```
![Captura de Tela (29)](https://github.com/user-attachments/assets/273d0615-0db0-424a-a1da-6b7253e31747)


## ▶️ 4. Rode o container

Execute o container e mapeie a porta 8080 do seu computador para a porta 80 do container:

```bash
docker run -d -p 8080:80 meu-site-tailwind
```
![Captura de Tela (30)](https://github.com/user-attachments/assets/2534fac4-c0f6-4b48-9928-71faf86fdd27)


## 🌐 5. Visualize no navegador

Abra o navegador e acesse:

```bash
(http://localhost:8080)
```
Você verá a landing page renderizada corretamente.

## 📸 Resultado: 

![Captura de Tela (28)](https://github.com/user-attachments/assets/a25d0b12-5866-4eb3-8c87-6243e88ca1ec)
