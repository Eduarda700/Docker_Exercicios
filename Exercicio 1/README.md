Rodando um container básico

Execute um container usando a imagem do Nginx e acesse a página padrão no navegador. Use a landing page do TailwindCSS como site estático dentro do container.

1 - acesse https://github.com/tailwindtoolbox/Landing-Page para baixar index.html e o hero.png

2 - crie um Dockerfile, para carregar uma imagem do Nginx, remover a pagina padrao e copiar no lugar a landing page e epoe a pora padrao do nginx

FROM nginx

RUN rm -rf /usr/share/nginx/html/*

COPY index.html . && hero.png . /usr/share/nginx/html/ 

EXPOSE 80

3 - construa a imagem

docker build -t meu-site-tailwind .
![Captura de Tela (29)](https://github.com/user-attachments/assets/03c01246-ef2f-4a50-8ca6-daf9bd88a830)

4 - rode a imagem

docker run -d -p 8080:80 meu-site-tailwind

5 - resultado: 

![Captura de Tela (28)](https://github.com/user-attachments/assets/8a2d1819-24a7-4ac7-8d91-63a398e81a63)
![Captura de Tela (30)](https://github.com/user-attachments/assets/df67131c-c92f-441a-b593-5249252eed2d)
