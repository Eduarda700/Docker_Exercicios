# 🚨 Analisando Imagem Docker com Trivy

O **Trivy** é uma ferramenta *open source* para análise de **vulnerabilidades em imagens Docker**. Neste exercício, você irá escanear uma imagem pública (como `python:3.9` ou `node:16`) em busca de falhas conhecidas.

---

## ✅ a. Instalar o Trivy

Se estiver usando **Linux**, **macOS** ou **WSL no Windows**, instale o Trivy com o script abaixo:

```bash
curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sudo sh -s -- -b /usr/local/bin
```
![Captura de Tela (52 3)](https://github.com/user-attachments/assets/b6e140b4-3af7-49fd-aa9c-35b0ec4e7d07)

Após a instalação, verifique se foi instalado corretamente:

```bash
trivy --version
```
![Captura de Tela (52 2)](https://github.com/user-attachments/assets/9d92c5ba-c9c2-4628-ad9d-d1656da44ff3)

---

## ⚠️ b. Filtrar vulnerabilidades HIGH ou CRITICAL

Você pode focar em falhas mais graves com:

```bash
trivy image --severity HIGH,CRITICAL node:16
```
![Captura de Tela (52 1)](https://github.com/user-attachments/assets/9dab5682-9333-4815-a193-7dcdea61d6e3)

---

## 🧾 c. Anotar vulnerabilidades e ações sugeridas

Ao executar o Trivy, será exibida uma lista de pacotes ou bibliotecas com falhas de segurança.

🔧 **Ações possíveis**:

- Atualizar a imagem base (ex: trocar `node:16` por `node:18`, ou `python:3.9` por `python:3.11`)
- Substituir dependências vulneráveis (ex: atualizar libs no `package.json` ou `requirements.txt`)
- Usar imagens menores e otimizadas (ex: `node:16-alpine`)

---

✅ Com isso, você consegue manter seus containers mais seguros e confiáveis!
