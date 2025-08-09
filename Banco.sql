-- Seleciona o banco de dados
Use meu_banco;
GO

-- 1. Criação da tabela
Create Table Clientes(
    Id_Cliente int IDENTITY(1,1) primary key,
    Nome varchar(50),
    Endereco varchar(50),
    Cidade varchar(50),
    Telefone varchar(50)
);
GO

-- 2. Inserção de dados
INSERT INTO Clientes (Nome, Endereco, Cidade, Telefone) VALUES
('Carlos Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Maria Oliveira', 'Avenida Paulista, 456', 'São Paulo', '(11) 91234-5678'),
('João Souza', 'Rua 7 de Setembro, 789', 'Rio de Janeiro', '(21) 99876-5432'),
('Ana Costa', 'Rua do Catete, 101', 'Rio de Janeiro', '(21) 92345-6789'),
('Pedro Santos', 'Praça XV de Novembro, 202', 'Belo Horizonte', '(31) 98765-4321'),
('Luana Pereira', 'Avenida do Contorno, 303', 'Belo Horizonte', '(31) 99876-5432'),
('Roberto Almeida', 'Rua dos Três Irmãos, 404', 'Porto Alegre', '(51) 99876-1234'),
('Fernanda Lima', 'Rua General Câmara, 505', 'Porto Alegre', '(51) 93245-6789'),
('Marcelo Ferreira', 'Rua das Acácias, 606', 'Salvador', '(71) 98765-8765'),
('Juliana Ribeiro', 'Avenida Sete de Setembro, 707', 'Salvador', '(71) 91234-7654'),
('Carlos Mendes', 'Rua do Sol, 808', 'Fortaleza', '(85) 99987-6543'),
('Tatiane Santos', 'Avenida Beira Mar, 909', 'Fortaleza', '(85) 99876-5432'),
('Ricardo Souza', 'Rua do Mercado, 1001', 'Recife', '(81) 98765-4321'),
('Patrícia Costa', 'Rua do Arco, 1112', 'Recife', '(81) 99876-1234'),
('Renato Lima', 'Avenida Rio Branco, 1213', 'Curitiba', '(41) 91234-6789'),
('Adriana Pereira', 'Rua da Paz, 1314', 'Curitiba', '(41) 99876-5432'),
('Eduardo Alves', 'Rua dos Andrades, 1415', 'Manaus', '(92) 98765-4321'),
('Simone Costa', 'Avenida Constantino Nery, 1516', 'Manaus', '(92) 99876-1234'),
('Jorge Silva', 'Rua das Pedras, 1617', 'Belém', '(91) 98765-4321'),
('Juliana Martins', 'Avenida Alcindo Cacela, 1718', 'Belém', '(91) 99876-5432'),
('Fábio Oliveira', 'Rua João Alfredo, 1819', 'Natal', '(84) 98765-8765'),
('Marcela Souza', 'Avenida Engenheiro Roberto Freire, 1920', 'Natal', '(84) 92345-6789'),
('Gustavo Costa', 'Rua Princesa Isabel, 2021', 'Vitória', '(27) 98765-4321'),
('Marta Lima', 'Avenida Vitória, 2122', 'Vitória', '(27) 99876-5432'),
('Leonardo Pereira', 'Rua São José, 2223', 'Cuiabá', '(65) 98765-4321'),
('Larissa Almeida', 'Avenida Mato Grosso, 2324', 'Cuiabá', '(65) 99876-1234'),
('Felipe Santos', 'Rua do Comércio, 2425', 'Campo Grande', '(67) 98765-4321'),
('Beatriz Ribeiro', 'Avenida Afonso Pena, 2526', 'Campo Grande', '(67) 99876-5432'),
('Eduardo Almeida', 'Rua da Estação, 2627', 'Maceió', '(82) 98765-4321'),
('Camila Costa', 'Avenida Pajuçara, 2728', 'Maceió', '(82) 99876-1234'),
('Maurício Ferreira', 'Rua do Sol, 2829', 'Teresina', '(86) 98765-4321');
GO
