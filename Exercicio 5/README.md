# 💾 Criando e Utilizando Volumes para Persistência de Dados

Neste exercício, você irá executar um container **MySQL** com volumes Docker, garantindo que os dados do banco sejam persistidos mesmo que o container seja removido.

---

## 📥 1. Baixe o projeto de exemplo

Clone o repositório com uma stack pronta: **React + Express + MySQL**

```bash
git clone https://github.com/docker/awesome-compose.git
cd awesome-compose/react-express-mysql
```

---

## ⚙️ 2. Configure o volume no `docker-compose.yml`

Adicione a seção de volumes no serviço `mysql` para persistir os dados no host.

```yaml
version: '3.8'

services:
  frontend:
    build: ./frontend
    ports:
      - "3000:3000"
    volumes:
      - ./frontend:/usr/src/app
      - /usr/src/app/node_modules
    # ...

  backend:
    build: ./backend
    volumes:
      - ./backend:/usr/src/app
      - /usr/src/app/node_modules
    # ...

  mysql:
    image: mysql:8.0
    ports:
      - "3306:3306"
    environment:
      - MYSQL_ROOT_PASSWORD=123456
      - MYSQL_DATABASE=mydb
    volumes:
      - mysql_data:/var/lib/mysql

volumes:
  mysql_data:
```

---

## 🛠️ 3. Usar o terminal do MySQL diretamente

Acesse o terminal do banco de dados dentro do container:

```bash
docker exec -it exercicio5-mysql-1 mysql -uroot -p123456
```

No prompt SQL:

```sql
USE mydb;
INSERT INTO users (name) VALUES ('Maria');
SELECT * FROM users;
```

Para sair, use:

```sql
exit;
```

---

## 🧪 4. Testar a persistência de dados

### a. Remova o container MySQL (os dados ficarão no volume):

```bash
docker rm -f mysql
```

### b. Suba novamente apenas o serviço do MySQL:

```bash
docker-compose up -d mysql
```

### c. Verifique os dados:

```bash
docker exec -it exercicio5-mysql-1 mysql -uroot -p123456 -e "SELECT * FROM mydb.users"
```

✅ Você verá que o usuário **Maria** ainda está lá, confirmando a **persistência dos dados**! 🎉
