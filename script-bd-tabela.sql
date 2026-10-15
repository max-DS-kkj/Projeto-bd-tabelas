CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(15)
);

INSERT INTO cliente (nome, email, cpf, telefone) VALUES
('Mariah Juliana Melo', 'mariahjulianamelo@grupoblackout.com.br', '650.794.922-10', '(66) 99496-8783'),
('Emily Andrea Santos', 'emily.andrea.santos@santander.com.br', '705.588.631-75', '(85) 2827-0908'),
('Fernanda Clara Analu da Rosa', 'fernanda.clara.darosa@sp.gov.br', '333.444.555-66', '(66) 98381-1217');


CREATE TABLE endereco (
    id_endereco SERIAL PRIMARY KEY,
    logradouro VARCHAR(255) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    id_cliente INT NOT NULL,
    CONSTRAINT fk_endereco_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

INSERT INTO endereco (logradouro, numero, cidade, estado, cep, id_cliente) VALUES
('Rua das Flores', '123', 'São Paulo', 'SP', '51090-012', 1),
('Avenida Brasil', '456', 'Rio de Janeiro', 'RJ', '67364-096', 2),
('Rua dos Inconfidentes', '789', 'Belo Horizonte', 'MG', '95776-091', 3);

CREATE TABLE categoria (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

INSERT INTO categoria (nome, descricao) VALUES
('Eletrônicos', 'Dispositivos eletrônicos em geral'),
('Móveis', 'Móveis para Quarto gamer e residência'),
('Vestuário', 'Roupas, calçados e acessórios');

CREATE TABLE fornecedor (
    id_fornecedor SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    contato VARCHAR(255)
);

INSERT INTO fornecedor (nome, cnpj, contato) VALUES
('Tech Distribuidora LTDA', '12.116.906/8267-90', 'vendas@techdistro.com'),
('Móveis Design S.A.', '98.765.929/5424-10', 'contato@moveisdesign.com'),
('Confecções Silva EIRELI', '45.656.912/8873-34', 'atendimento@confeccoessilva.com');

