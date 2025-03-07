# 💰 Finance App - Controle Financeiro Pessoal

![Banner](https://via.placeholder.com/1200x400.png?text=Controle+Financeiro+Inteligente)

Aplicativo completo para gestão de finanças pessoais desenvolvido durante o 4º período da UTFOR.

## 🚀 Tecnologias
- **Front-end:** React JS
- **Back-end:** Spring Boot (Java)
- **Banco de Dados:** PostgreSQL

## ⚙️ Configuração Local

### Pré-requisitos
- Java 17
- Node.js 18+
- PostgreSQL 15

```bash
# Clone o repositório
git clone https://github.com/josedev2003/finance-app.git
cd finance-app
Banco de Dados
Crie o banco:

sql
Copy
CREATE DATABASE finance_db;
Execute o schema:

bash
Copy
psql -U postgres -d finance_db -f database/schema.sql
Back-end (Spring Boot)
Edite o arquivo:
BackendFinanceApp/finaceapp/src/main/resources/application.properties

properties
Copy
spring.datasource.url=jdbc:postgresql://localhost:5432/finance_db
spring.datasource.username=SEU_USUARIO
spring.datasource.password=SUA_SENHA
Execute:

bash
Copy
cd BackendFinanceApp/finaceapp
./mvnw spring-boot:run
Front-end (React)
Crie .env em FrontendFinanceApp:

env
Copy
VITE_API_URL=http://localhost:8080
Execute:

bash
Copy
cd FrontendFinanceApp
npm install
npm run dev
📂 Estrutura
Copy
finance-app/
├── BackendFinanceApp/  # API Java
├── FrontendFinanceApp/ # Interface React
└── database/           # Scripts PostgreSQL
📄 Licença
MIT License - veja LICENSE

Desenvolvido por José Dev
📧 jose.dev@example.com
🔗 LinkedIn

Copy

### 2️⃣ Passos para usar no GitHub:
1. No seu repositório, clique em "Add file" > "Create new file"
2. Nomeie como `README.md`
3. Cole todo o conteúdo acima
4. Role até o final e clique em "Commit new file"

### ⚠️ Importante!
- Remova os comentários entre ``` antes de salvar
- Substitua:
  - `SEU_USUARIO` e `SUA_SENHA` pelas suas credenciais do PostgreSQL
  - Links de contato no final
  - URL da imagem do banner (opcional)
