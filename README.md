# 🌐 Configuração de Banco de Dados SQL Server na Azure com Aplicação PHP

Este guia mostra como:

1. Criar um banco de dados **SQL Server** no **Microsoft Azure**
2. Conectar uma aplicação **PHP** ao banco de dados criado

---

## 🛠️ Pré-requisitos

- Conta na [Azure Portal](https://portal.azure.com)
- PHP instalado (7.3+ recomendado)
- Extensões PHP:
  - `pdo_sqlsrv`
  - `sqlsrv`
- Servidor local (Apache, Nginx, XAMPP, etc)
- Ferramenta opcional: **Azure Data Studio** ou **SQL Server Management Studio (SSMS)**

---

## 1️⃣ Criar SQL Server e Banco de Dados no Azure

### Etapas:

1. **Acesse o Azure Portal**
   - [https://portal.azure.com](https://portal.azure.com)

2. **Crie um recurso SQL Server**
   - Menu lateral → **Criar um recurso**
   - Pesquise por **SQL Database**
   - Clique em **"Criar"**

3. **Preencha os dados básicos**
   - **Nome do banco de dados**: `meu_banco_php`
   - **Servidor**: clique em *"Criar novo"*
     - Nome do servidor: `meuservidorphp`
     - Usuário admin: `adminuser`
     - Senha segura

4. **Plano e desempenho**
   - Escolha **uso gratuito** se disponível
   - Selecione região geográfica mais próxima

5. **Regras de firewall**
   - Após criar o recurso, clique em **"Definir regras de firewall do servidor"**
   - Adicione seu IP atual

6. **Clique em "Criar" e aguarde o provisionamento**

---

## 2️⃣ Obter dados de conexão

Após a criação:

1. Vá até o recurso **SQL Database**
2. Anote as informações:
   - **Nome do servidor**: `meuservidorphp.database.windows.net`
   - **Porta padrão**: `1433`
   - **Nome do banco de dados**: `meu_banco_php`
   - **Usuário e senha**

---

## 3️⃣ Instalar extensão do SQL Server no PHP

### Windows (XAMPP ou WAMP):

1. Baixe as DLLs da extensão:
   - [https://learn.microsoft.com/sql/connect/php/download-drivers-php-sql-server](https://learn.microsoft.com/sql/connect/php/download-drivers-php-sql-server)

2. Copie os arquivos para a pasta `ext` do PHP

3. No `php.ini`, adicione:

```ini
extension=sqlsrv
extension=pdo_sqlsrv
```

## 3️⃣ Configurando sua Aplicação PHP

### Estrutura básica do projeto

### Exemplo de Conexão com o Banco

```php
<?php
try {
    $conn = new PDO("sqlsrv:server = tcp:{nome do seu servidor}; Database = {nome do seu banco};TrustServerCertificate=false", "{nome do seu usuario}", "{sua senha}");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOException $e) {
    print("Error connecting to SQL Server.");
    die(print_r($e));
}
```
