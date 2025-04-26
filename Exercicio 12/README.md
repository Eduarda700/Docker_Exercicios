# 🔐 Corrigindo Vulnerabilidades em Imagens Docker

Após identificar vulnerabilidades com ferramentas como o **Trivy**, o próximo passo é **corrigir** e **refatorar o Dockerfile**. Imagens grandes, genéricas e mal configuradas podem trazer riscos à segurança.

Neste exercício, você irá melhorar um Dockerfile vulnerável, aplicando boas práticas para criar uma imagem mais **segura**, **leve** e **produtiva**.

---

## 🐳 Dockerfile Vulnerável (antes)

```dockerfile
FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
```

## 📦 requirements.txt original

```txt
flask==1.1.1
requests==2.22.0
```

---

## ❌ Problemas Identificados

- Usa imagem grande (`python:3.9`), com muitas bibliotecas desnecessárias.
- Não especifica `USER` — roda como **root** por padrão.
- Usa pacotes desatualizados com vulnerabilidades conhecidas.
- Não separa etapas de build de runtime (ideal para segurança e cache).
- Não define um `ENTRYPOINT`.

---

## ✅ Dockerfile Corrigido e Mais Seguro

```dockerfile
# Use uma imagem base leve e atualizada
FROM python:3.11-alpine

# Crie um usuário não-root
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Defina o diretório de trabalho
WORKDIR /app

# Copie e instale as dependências
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante da aplicação
COPY . .

# Defina o usuário que irá rodar o container
USER appuser

# Exponha a porta usada pela aplicação Flask
EXPOSE 8000

# Comando de inicialização
ENTRYPOINT ["python"]
CMD ["app.py"]
```

---

## 🆕 requirements.txt Atualizado (opcional)

```txt
flask==2.3.3
requests==2.31.0
```

---

## 🎯 Resultado

- Imagem menor (base Alpine).
- Dependências mais seguras e atualizadas.
- Executa como usuário não-root.
- Segue boas práticas de construção e segurança.

Com essas melhorias, sua imagem está mais preparada para ambientes de produção e menos vulnerável a ataques.

