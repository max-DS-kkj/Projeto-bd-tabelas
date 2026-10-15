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

