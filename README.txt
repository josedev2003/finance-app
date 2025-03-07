💰 Aplicação de Controle Financeiro Pessoal
Este projeto é uma aplicação full-stack para gerenciamento de finanças pessoais, permitindo o controle de receitas e despesas de forma simples e eficiente.

🛠️ Tecnologias Utilizadas
Back-end: Java com Spring Boot
Front-end: React.js com axios(Biblioteca)
Banco de Dados: PostgreSQL


📦 Estrutura do Projeto
O projeto é dividido em duas partes principais:
Back-end: Fornece uma API RESTful para gerenciar transações financeiras.
Front-end: Interface de usuário para interação com a API.

🚀 Como Executar o Projeto
Pré-requisitos
Java 17 ou superior
Node.js (versão 14 ou superior)
PostgreSQL (versão 12 ou superior)

Passo 1: Configuração do Banco de Dados
Criar o Banco de Dados:

CREATE DATABASE finance_db;
Criar a Tabela de Transações:

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    category VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL
);


Passo 2: Configuração do Back-end
Clonar o Repositório:
git clone https://github.com/josedev2003/finance-app.git
cd finance-app/backend
Configurar o application.properties:

No arquivo src/main/resources/application.properties, configure as credenciais do banco de dados:

spring.datasource.url=jdbc:postgresql://localhost:5432/finance_db
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
Executar a Aplicação:

./mvnw spring-boot:run
A API estará disponível em http://localhost:8080/api/transactions.

Passo 3: Configuração do Front-end
Instalar Dependências:

cd ../frontend
npm install
npm install axios
Executar a Aplicação:

npm start
A interface estará disponível em http://localhost:3000.



📄 Funcionalidades
Adicionar Transações: Registre receitas ou despesas com categoria, valor e data.
Listar Transações: Visualize todas as transações registradas.
Adicionar Transações: Adicionar transações.
Calculo de Valor total: Calcular valor total de transações.


📂 Estrutura de Pastas
finance-app/
├── backend/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/financeapp/
│   │   │   │   ├── controllers/
│   │   │   │   ├── models/
│   │   │   │   ├── repositories/
│   │   │   │   └── services/
│   │   │   └── resources/
│   │   │       └── application.properties
│   └── pom.xml
└── frontend/
    ├── src/
    │   ├── components/
    │   ├── App.js
    │   └── index.js
    └── package.json


🤝 Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.