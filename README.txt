# 💰 Finance App - Controle Financeiro Pessoal

Aplicativo completo para gestão de finanças pessoais.O Finance App permite que os usuários gerenciem suas receitas e despesas de forma eficiente, utilizando uma interface intuitiva e um back-end.

---

## 🚀 Tecnologias Utilizadas

### **Front-end:**
- [React.js](https://reactjs.org/) - Biblioteca para construção de interfaces de usuário.
- [Vite](https://vitejs.dev/) - Ferramenta de build rápida para projetos React.
- [Styled Components](https://styled-components.com/) - Estilização baseada em componentes.

### **Back-end:**
- [Spring Boot](https://spring.io/projects/spring-boot) - Framework Java para aplicações web.
- [Spring Data JPA](https://spring.io/projects/spring-data-jpa) - Gerenciamento de banco de dados.
- [Spring Security](https://spring.io/projects/spring-security) - Implementação de segurança para autenticação e autorização.

### **Banco de Dados:**
- [PostgreSQL](https://www.postgresql.org/) - Banco de dados relacional open-source.

---

## ⚙️ Configuração do Ambiente Local

### **1️⃣ Requisitos**
Antes de iniciar, certifique-se de ter os seguintes itens instalados:
- [Java 17](https://adoptium.net/)
- [Node.js 18+](https://nodejs.org/)
- [PostgreSQL 15](https://www.postgresql.org/)

### **2️⃣ Clonando o Repositório**
```bash
# Clone o repositório
git clone https://github.com/josedev2003/finance-app.git
cd finance-app
```

### **3️⃣ Configurando o Banco de Dados**
Crie o banco de dados no PostgreSQL:
```sql
CREATE DATABASE finance_db;
```

Execute o script SQL para criar as tabelas:
```bash
psql -U postgres -d finance_db -f database/schema.sql
```

### **4️⃣ Configurando o Back-end (Spring Boot)**
Edite o arquivo de configuração:
```bash
BackendFinanceApp/finaceapp/src/main/resources/application.properties
```

Configure as credenciais do banco de dados:
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/finance_db
spring.datasource.username=SEU_USUARIO
spring.datasource.password=SUA_SENHA
```

Execute a aplicação:
```bash
cd BackendFinanceApp/finaceapp
./mvnw spring-boot:run
```

### **5️⃣ Configurando o Front-end (React)**
No diretório do front-end, crie um arquivo `.env`:
```bash
cd FrontendFinanceApp
```

Adicione a URL da API no arquivo `.env`:
```env
VITE_API_URL=http://localhost:8080
```

Instale as dependências e execute o front-end:
```bash
npm install
npm run dev
```

---

## 📂 Estrutura do Projeto
```plaintext
finance-app/
├── BackendFinanceApp/  # API Java (Spring Boot)
├── FrontendFinanceApp/ # Interface React
└── database/           # Scripts do Banco de Dados PostgreSQL
```

---

## 📜 Licença
Este projeto está sob a licença MIT. Para mais informações, consulte o arquivo [LICENSE](./LICENSE).

---

## 👨‍💻 Desenvolvedor
Desenvolvido por **José Dev**

📧 Entre em contato: [jose.dev.metz@gmail.com](mailto:jose.dev.metz@gmail.com)

Sinta-se à vontade para contribuir com melhorias ou relatar problemas! 🚀

