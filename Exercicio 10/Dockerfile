FROM node:alpine

# Criar diretório da aplicação
WORKDIR /app

# Copiar arquivos
COPY . .

# Instalar dependências (opcional, se tiver package.json)
# RUN npm install

# Criar usuário não-root no Alpine
RUN adduser -S appuser

# Mudar dono da pasta
RUN chown -R appuser /app

# Usar o usuário não-root
USER appuser

# Expor a porta e rodar
EXPOSE 3000
CMD ["node", "app.js"]
