# Rails ToDo App

Este é um aplicativo simples de gerenciamento de tarefas, desenvolvido com Ruby on Rails

## Tecnologias utilizadas e suas versões

- **Ruby**: 3.2.2
- **Rails**: 8.0.1

## Como rodar o projeto

### 1. Clonar o repositório

Clone o repositório para sua máquina local:

```bash
git clone https://github.com/jrotciv/rails-todo-app.git
```
ou
```bash
git clone git@github.com:jrotciv/rails-todo-app.git
```
### 2. Instalar dependências

Entre na pasta e instale as dependências necessárias

```bash
cd rails-todo-app
bundle install
```
### 3. Iniciar o compose

Inicie o container com o docker compose para o banco de dados e o painel de visualização
```bash
docker compose up
```
ou

```bash
docker compose up -d
```

### 4. Crie o banco de dados

Crie e rode as migrations para o banco de dados com o comando abaixo (o banco será criado automaticamente)

```bash
rails db:migrate
```
### 5. Inicie a aplicação

```bash
rails s
```

Aplicação rodando em: ```http://localhost:3000```  
  
Adminer (painel de administração do banco): 
- Rodando: ```http://localhost:8080```
- Para entrar no painel:
  - Sistema: ```PostgreSQL```
  - Servidor: ```database```
  - Usuário: ```root```
  - Senha: ```root```

