# 🚀 Criando e Rodando um Container Interativo com Ubuntu

Passo a passo para iniciar um **container Ubuntu** de forma interativa e testar um **script Bash** que instala pacotes ou imprime logs do sistema.

---

## 🐳 1. Inicie um container Ubuntu

Use o parâmetro `-it` para iniciar o container em modo interativo, com acesso ao terminal:

```bash
docker run -it ubuntu
```
![Captura de Tela (31)](https://github.com/user-attachments/assets/2fe5c696-57c1-4fe7-b60f-1caf5a698d16)

---

## 📝 2. Crie um script Bash no container

Crie um script chamado `meu_script.sh` com os comandos desejados, como instalação de pacotes ou exibição de logs:

```bash
nano meu_script.sh
```

Exemplo de conteúdo do script:

```bash
#!/bin/bash
apt update
apt install -y nginx
echo "Nginx instalado!"
```

Depois, torne o script executável:

```bash
chmod +x meu_script.sh
```

E execute-o:

```bash
./meu_script.sh
```

---

## 🔍 3. Verifique o funcionamento do serviço

Após a execução, confira o status do serviço instalado (ex: Nginx):

```bash
service nginx status
```

Se o serviço não estiver ativo, inicie-o manualmente:

```bash
service nginx start
```

---

## 📸 Resultado Esperado

Você verá mensagens confirmando a instalação do pacote e, ao verificar o status, o serviço Nginx estará ativo no container.
