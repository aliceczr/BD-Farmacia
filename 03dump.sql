-- Tabela desconto_promocoes
CREATE TABLE desconto_promocoes (
    produtos_id INT AUTO_INCREMENT PRIMARY KEY,
    desc TEXT,
    data_inicio DATE,
    data_fim DATE,
    preco_mercado DECIMAL(10, 2),
    preco_desconto DECIMAL(10, 2)
);

-- Tabela link_navegacoes
CREATE TABLE link_navegacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_links VARCHAR(255),
    url_link VARCHAR(255)
);

-- Tabela login_cliente
CREATE TABLE login_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(255),
    complemento VARCHAR(255),
    ponto_referencia VARCHAR(255),
    estado VARCHAR(255),
    uf VARCHAR(255),
    cliente_id INT,
    email VARCHAR(255),
    senha VARCHAR(255),
    
);

-- Tabela cliente
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE,
    cpf VARCHAR(20),
    email VARCHAR(255),
    endereco_id INT,
    senha VARCHAR(255),
    
);

-- Tabela produtos_desta
CREATE TABLE produtos_desta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    data_inicio DATE,
    data_fim DATE
);

-- Tabela catalogPag_inicial
CREATE TABLE catalogPag_inicial (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    desc TEXT,
    imagem_url VARCHAR(255)
);

-- Tabela carrinho_compra
CREATE TABLE carrinho_compra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    itens_pedido TEXT,
    quantidade_itens INT
);

-- Tabela favorito_cliente
CREATE TABLE favorito_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    data_adicao DATE
);

-- Tabela conta_cliente
CREATE TABLE conta_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    agencia VARCHAR(20),
    conta VARCHAR(20),
    banco VARCHAR(255),
    tipo_conta VARCHAR(255)
);

-- Tabela cadastro_funcionario
CREATE TABLE cadastro_funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE,
    cpf VARCHAR(20),
    rg VARCHAR(20),
    senha VARCHAR(255),
    enderecoFunc_id INT,
    
);

-- Tabela adicionar_pedido
CREATE TABLE adicionar_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    funcionario_id INT,
    data_pedido DATE,
    tipo_pedido VARCHAR(255),
    status_pedido VARCHAR(255)
);

-- Tabela historico_cliente
CREATE TABLE historico_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    compras_id INT,
    numero_pedido INT,
    valor_total DECIMAL(10, 2),
    status_pagamento VARCHAR(255)
);

-- Tabela compras
CREATE TABLE compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_compra DATE,
    preco_final DECIMAL(10, 2),
    status_compra VARCHAR(255)
);

-- Tabela produto
CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10, 2),
    quantidade_estoque INT,
    codigo_barra VARCHAR(255),
    tarja_id INT,
    lote_remedio_id INT,
    marca_id INT
);

-- Tabela endereco_funcionario
CREATE TABLE endereco_funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(255),
    complemento VARCHAR(255),
    ponto_referencia VARCHAR(255),
    estado VARCHAR(255),
    uf VARCHAR(255)
);

-- Tabela cliente_control
CREATE TABLE cliente_control (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    ultimo_acesso TIMESTAMP,
    status_conta VARCHAR(255)
);

-- Tabela cadastro_farmeceutico
CREATE TABLE cadastro_farmeceutico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE,
    crf VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(255),
    enderecoFunc_id INT
);

-- Tabela tarja_remedio
CREATE TABLE tarja_remedio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tarja VARCHAR(255)
);

-- Tabela cadastr_medico
CREATE TABLE cadastr_medico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farmaceutico_id INT,
    nome VARCHAR(255),
    especialidade VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(255)
);

-- Tabela historico_venda
CREATE TABLE historico_venda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    funcionario_id INT,
    cliente_id INT,
    quantidade INT,
    valor_total DECIMAL(10, 2)
);

-- Tabela historico_entregador
CREATE TABLE historico_entregador (
    id INT AUTO_INCREMENT PRIMARY KEY,
    motoboy_id INT,
    entregaPedido_id INT,
    tipo_evento VARCHAR(255),
    desc TEXT,
    valor_recebido DECIMAL(10, 2)
);

-- Tabela entrega_pedido
CREATE TABLE entrega_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entregador_id INT,
    cliente_id INT,
    data_entrega DATE,
    status_entrega VARCHAR(255),
    endereco_entrega_cliente VARCHAR(255),
    desc TEXT
);

-- Tabela cadastro_motoboy
CREATE TABLE cadastro_motoboy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE,
    cpf VARCHAR(20),
    rg VARCHAR(20),
    cnh VARCHAR(20),
    placa_moto VARCHAR(20)
);

-- Tabela receita_farmaceutico
CREATE TABLE receita_farmaceutico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farmaceutico_id INT,
    cliente_id INT,
    data_prescricao DATE,
    produto_id INT,
    tarja_id INT,
    medico_id INT
);

-- Tabela adicao_estoque
CREATE TABLE adicao_estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_adicao DATE,
    cadastro_funcionari_id INT,
    quantidade INT,
    fornecedor_id INT,
    produto_id INT
);

-- Tabela fornecedor
CREATE TABLE fornecedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cnpj VARCHAR(20),
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(255),
    data_inicio DATE
);

-- Tabela historico_fornecedor
CREATE TABLE historico_fornecedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fornecedor_id INT,
    data_registro DATE,
    descricao TEXT
);

-- Tabela lote_remedio
CREATE TABLE lote_remedio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    marca_id INT,
    numero_lote VARCHAR(255),
    data_vencimento DATE,
    data_fabricacao DATE,
    quantidade INT,
    desc TEXT
);

-- Tabela marca
CREATE TABLE marca (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_marca VARCHAR(255)
);

-- Tabela lucro
CREATE TABLE lucro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mes VARCHAR(255),
    valor_lucro DECIMAL(10, 2),
    valor_investido DECIMAL(10, 2)
);

-- Tabela vendas_cancelada
CREATE TABLE vendas_cancelada (
    id INT AUTO_INCREMENT PRIMARY KEY,
    compra_id INT,
    motivo_cancelamento TEXT
);


-- Tabela desconto_promocoes
ALTER TABLE desconto_promocoes
ADD FOREIGN KEY (produtos_id) REFERENCES produto(id);

-- Tabela login_cliente
ALTER TABLE login_cliente
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);

-- Tabela produtos_desta
ALTER TABLE produtos_desta
ADD FOREIGN KEY (produto_id) REFERENCES produto(id);

-- Tabela catalogPag_inicial
ALTER TABLE catalogPag_inicial
ADD FOREIGN KEY (produto_id) REFERENCES produto(id);

-- Tabela carrinho_compra
ALTER TABLE carrinho_compra
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);

-- Tabela carrinho_compra
ALTER TABLE carrinho_compra
ADD FOREIGN KEY (itens_pedido) REFERENCES produtos_desta(id);

-- Tabela favorito_cliente
ALTER TABLE favorito_cliente
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);
ALTER TABLE favorito_cliente
ADD FOREIGN KEY (produto_id) REFERENCES produto(id);

-- Tabela conta_cliente
ALTER TABLE conta_cliente
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);

-- Tabela adicionar_pedido
ALTER TABLE adicionar_pedido
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);
ALTER TABLE adicionar_pedido
ADD FOREIGN KEY (funcionario_id) REFERENCES cadastro_funcionario(id);

-- Tabela historico_cliente
ALTER TABLE historico_cliente
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);
ALTER TABLE historico_cliente
ADD FOREIGN KEY (compras_id) REFERENCES compras(id);

-- Tabela compras
ALTER TABLE compras
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);

-- Tabela compras
ALTER TABLE compras
ADD FOREIGN KEY (produto_id) REFERENCES produto(id);

-- Tabela cliente_control
ALTER TABLE cliente_control
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);

-- Tabela cadastro_farmeceutico
ALTER TABLE cadastro_farmeceutico
ADD FOREIGN KEY (enderecoFunc_id) REFERENCES endereco_funcionario(id);

-- Tabela cadastr_medico
ALTER TABLE cadastr_medico
ADD FOREIGN KEY (farmaceutico_id) REFERENCES cadastro_farmeceutico(id);

-- Tabela historico_venda
ALTER TABLE historico_venda
ADD FOREIGN KEY (funcionario_id) REFERENCES cadastro_funcionario(id);
ALTER TABLE historico_venda
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);

-- Tabela historico_entregador
ALTER TABLE historico_entregador
ADD FOREIGN KEY (motoboy_id) REFERENCES cadastro_motoboy(id);
ALTER TABLE historico_entregador
ADD FOREIGN KEY (entregaPedido_id) REFERENCES entrega_pedido(id);

-- Tabela entrega_pedido
ALTER TABLE entrega_pedido
ADD FOREIGN KEY (entregador_id) REFERENCES cadastro_motoboy(id);
ALTER TABLE entrega_pedido
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);
ALTER TABLE entrega_pedido
ADD FOREIGN KEY (endereco_entrega_cliente) REFERENCES login_cliente(id);

-- Tabela receita_farmaceutico
ALTER TABLE receita_farmaceutico
ADD FOREIGN KEY (farmaceutico_id) REFERENCES cadastro_farmeceutico(id);
ALTER TABLE receita_farmaceutico
ADD FOREIGN KEY (cliente_id) REFERENCES cliente(id);
ALTER TABLE receita_farmaceutico
ADD FOREIGN KEY (produto_id) REFERENCES produto(id);
ALTER TABLE receita_farmaceutico
ADD FOREIGN KEY (tarja_id) REFERENCES tarja_remedio(id);
ALTER TABLE receita_farmaceutico
ADD FOREIGN KEY (medico_id) REFERENCES cadastr_medico(id);

-- Tabela adicao_estoque
ALTER TABLE adicao_estoque
ADD FOREIGN KEY (cadastro_funcionari_id) REFERENCES cadastro_funcionario(id);
ALTER TABLE adicao_estoque
ADD FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(id);
ALTER TABLE adicao_estoque
ADD FOREIGN KEY (produto_id) REFERENCES produto(id);

-- Tabela historico_fornecedor
ALTER TABLE historico_fornecedor
ADD FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(id);

-- Tabela lote_remedio
ALTER TABLE lote_remedio
ADD FOREIGN KEY (produto_id) REFERENCES produto(id);
ALTER TABLE lote_remedio
ADD FOREIGN KEY (marca_id) REFERENCES marca(id);

-- Tabela produto
ALTER TABLE produto
ADD FOREIGN KEY (tarja_id) REFERENCES tarja_remedio(id);
ALTER TABLE produto
ADD FOREIGN KEY (lote_remedio_id) REFERENCES lote_remedio(id);
ALTER TABLE produto
ADD FOREIGN KEY (marca_id) REFERENCES marca(id);

-- Tabela marca
ALTER TABLE marca
ADD FOREIGN KEY (lucro_id) REFERENCES lucro(id);

-- Tabela vendas_cancelada
ALTER TABLE vendas_cancelada
ADD FOREIGN KEY (compra_id) REFERENCES compras(id);






-- Inserir 5 entradas de dados na tabela desconto_promocoes
INSERT INTO desconto_promocoes (produtos_id, desc, data_inicio, data_fim, preco_mercado, preco_desconto)
VALUES
(1, 'Desconto de verão', '2023-06-15', '2023-06-30', 50.00, 40.00),
(2, 'Venda de outono', '2023-09-01', '2023-09-15', 75.00, 60.00),
(3, 'Promoção de inverno', '2023-12-01', '2023-12-15', 60.00, 50.00),
(4, 'Oferta de primavera', '2023-03-15', '2023-03-30', 45.00, 35.00),
(5, 'Especial de aniversário', '2023-07-10', '2023-07-20', 70.00, 55.00);

-- Inserir 5 entradas de dados na tabela link_navegacoes para uma farmácia
INSERT INTO link_navegacoes (id, nome_links, url_link)
VALUES
(1, 'Catálogo de Medicamentos', 'https://www.farmaciaexemplo.com/catalogo-medicamentos'),
(2, 'Produtos de Beleza', 'https://www.farmaciaexemplo.com/produtos-beleza'),
(3, 'Promoções da Semana', 'https://www.farmaciaexemplo.com/promocoes-semana'),
(4, 'Contato e Localização', 'https://www.farmaciaexemplo.com/contato-localizacao'),
(5, 'Serviços Farmacêuticos', 'https://www.farmaciaexemplo.com/servicos-farmaceuticos');

-- Inserir 5 entradas de dados na tabela login_cliente
INSERT INTO login_cliente (id, logradouro, complemento, ponto_referencia, estado, uf)
VALUES
(1, '123 Rua Principal', 'Apt 4B', 'Perto do Parque Central', 'São Paulo', 'SP'),
(2, '456 Avenida Secundária', 'Casa 5', 'Próximo à Estação de Trem', 'Rio de Janeiro', 'RJ'),
(3, '789 Rua do Comércio', NULL, 'Ao lado do Mercado Municipal', 'Belo Horizonte', 'MG'),
(4, '101 Rua Tranquila', 'Bloco C', 'Perto da Praia', 'Fortaleza', 'CE'),
(5, '222 Avenida Movimentada', 'Loja 7', 'Próximo ao Shopping', 'Salvador', 'BA');

-- Inserir 5 entradas de dados na tabela login_cliente
INSERT INTO login_cliente (cliente_id, email, senha)
VALUES
(1, 'cliente1@email.com', 'senha123'),
(2, 'cliente2@email.com', 'senha456'),
(3, 'cliente3@email.com', 'senha789'),
(4, 'cliente4@email.com', 'senhaabc'),
(5, 'cliente5@email.com', 'senhaxyz');


-- Inserir 5 entradas de dados na tabela cliente
INSERT INTO cliente (id, nome, data_nascimento, cpf, email, endereco_id, senha)
VALUES
(1, 'João da Silva', '1990-05-15', '123.456.789-01', 'joao@email.com', 1, 'senha123'),
(2, 'Maria Oliveira', '1985-08-20', '987.654.321-02', 'maria@email.com', 2, 'senha456'),
(3, 'Pedro Santos', '1982-02-10', '567.890.123-03', 'pedro@email.com', 3, 'senha789'),
(4, 'Ana Souza', '1995-03-25', '234.567.890-04', 'ana@email.com', 4, 'senhaabc'),
(5, 'Luiza Ferreira', '1998-11-12', '345.678.901-05', 'luiza@email.com', 5, 'senhaxyz');

-- Inserir 5 entradas de dados na tabela produtos_desta
INSERT INTO produtos_desta (id, produto_id, data_inicio, data_fim)
VALUES
(1, 1, '2023-11-15', '2023-11-30'),
(2, 2, '2023-12-01', '2023-12-15'),
(3, 3, '2023-11-20', '2023-12-05'),
(4, 4, '2023-12-10', '2023-12-25'),
(5, 5, '2023-11-25', '2023-12-10');

-- Inserir 5 entradas de dados na tabela catalogPag_inicial
INSERT INTO catalogPag_inicial (id, produto_id, desc, imagem_url)
VALUES
(1, 1, 'Produto em Destaque 1', 'https://www.example.com/imagem1.jpg'),
(2, 2, 'Produto em Destaque 2', 'https://www.example.com/imagem2.jpg'),
(3, 3, 'Produto em Destaque 3', 'https://www.example.com/imagem3.jpg'),
(4, 4, 'Produto em Destaque 4', 'https://www.example.com/imagem4.jpg'),
(5, 5, 'Produto em Destaque 5', 'https://www.example.com/imagem5.jpg');

-- Inserir 5 entradas de dados na tabela carrinho_compra
INSERT INTO carrinho_compra (id, cliente_id, itens_pedido, quantidade_itens)
VALUES
(1, 1, 'Produto A, Produto B', 2),
(2, 2, 'Produto C, Produto D', 2),
(3, 3, 'Produto B, Produto E', 2),
(4, 4, 'Produto A, Produto D', 2),
(5, 5, 'Produto C, Produto E', 2);


-- Inserir 5 entradas de dados na tabela favorito_cliente
INSERT INTO favorito_cliente (id, cliente_id, produto_id, data_adicao)
VALUES
(1, 1, 1, '2023-11-01'),
(2, 2, 2, '2023-11-02'),
(3, 3, 3, '2023-11-03'),
(4, 4, 4, '2023-11-04'),
(5, 5, 5, '2023-11-05');


-- Inserir 5 entradas de dados na tabela conta_cliente
INSERT INTO conta_cliente (id, cliente_id, agencia, conta, banco, tipo_conta)
VALUES
(1, 1, '1234', '56789', 'Banco A', 'Corrente'),
(2, 2, '4321', '98765', 'Banco B', 'Poupança'),
(3, 3, '5678', '12345', 'Banco A', 'Corrente'),
(4, 4, '8765', '54321', 'Banco C', 'Poupança'),
(5, 5, '9876', '67890', 'Banco B', 'Corrente');

-- Inserir 5 entradas de dados na tabela cadastro_funcionario
INSERT INTO cadastro_funcionario (id, nome, data_nascimento, cpf, rg, senha, enderecoFunc_id)
VALUES
(1, 'Maria Silva', '1980-05-20', '123.456.789-01', '12345', 'senha123', 1),
(2, 'João Santos', '1975-08-15', '987.654.321-02', '54321', 'senha456', 2),
(3, 'Ana Pereira', '1982-02-10', '567.890.123-03', '67890', 'senha789', 3),
(4, 'Pedro Alves', '1990-03-25', '234.567.890-04', '98765', 'senhaabc', 4),
(5, 'Luiza Fernandes', '1995-11-12', '345.678.901-05', '43210', 'senhaxyz', 5);

-- Inserir 5 entradas de dados na tabela adicionar_pedido
INSERT INTO adicionar_pedido (id, cliente_id, funcionario_id, data_pedido, tipo_pedido, status_pedido)
VALUES
(1, 1, 1, '2023-11-01', 'Pedido de Medicamentos', 'Em Processamento'),
(2, 2, 2, '2023-11-02', 'Pedido de Produtos de Beleza', 'Aguardando Entrega'),
(3, 3, 3, '2023-11-03', 'Pedido de Medicamentos', 'Entregue'),
(4, 4, 4, '2023-11-04', 'Pedido de Produtos de Beleza', 'Em Processamento'),
(5, 5, 5, '2023-11-05', 'Pedido de Medicamentos', 'Aguardando Entrega');

-- Inserir 5 entradas de dados na tabela historico_cliente
INSERT INTO historico_cliente (id, cliente_id, compras_id, numero_pedido, valor_total, status_pagamento)
VALUES
(1, 1, 1, 'PED20231101', 150.00, 'Pago'),
(2, 2, 2, 'PED20231102', 75.50, 'Pago'),
(3, 3, 3, 'PED20231103', 200.00, 'Aguardando Pagamento'),
(4, 4, 4, 'PED20231104', 50.25, 'Pago'),
(5, 5, 5, 'PED20231105', 95.80, 'Pago');

-- Inserir 5 entradas de dados na tabela compras
INSERT INTO compras (id, cliente_id, data_compra, preco_final, status_compra)
VALUES
(1, 1, '2023-11-01', 150.00, 'Concluída'),
(2, 2, '2023-11-02', 75.50, 'Concluída'),
(3, 3, '2023-11-03', 200.00, 'Em Andamento'),
(4, 4, '2023-11-04', 50.25, 'Concluída'),
(5, 5, '2023-11-05', 95.80, 'Concluída');

-- Inserir 5 entradas de dados na tabela produto
INSERT INTO produto (id, nome, preco, quantidade_estoque, codigo_barra, tarja_id, lote_remedio_id, marca_id)
VALUES
(1, 'Paracetamol 500mg', 5.99, 100, '1234567890', 1, 1, 1),
(2, 'Ibuprofeno 400mg', 6.99, 75, '9876543210', 2, 2, 2),
(3, 'Amoxicilina 500mg', 8.99, 50, '5678901234', 3, 3, 3),
(4, 'Omeprazol 20mg', 7.49, 60, '2345678901', 1, 4, 4),
(5, 'Loratadina 10mg', 4.99, 120, '7654321098', 4, 5, 5);

-- Inserir 5 entradas de dados na tabela endereco_funcionario
INSERT INTO endereco_funcionario (id, logradouro, complemento, ponto_referencia, estado, uf)
VALUES
(1, '123 Rua Principal', 'Apt 4B', 'Perto do Parque Central', 'São Paulo', 'SP'),
(2, '456 Avenida Secundária', 'Casa 5', 'Próximo à Estação de Trem', 'Rio de Janeiro', 'RJ'),
(3, '789 Rua do Comércio', NULL, 'Ao lado do Mercado Municipal', 'Belo Horizonte', 'MG'),
(4, '101 Rua Tranquila', 'Bloco C', 'Perto da Praia', 'Fortaleza', 'CE'),
(5, '222 Avenida Movimentada', 'Loja 7', 'Próximo ao Shopping', 'Salvador', 'BA');

-- Inserir 5 entradas de dados na tabela cliente_control
INSERT INTO cliente_control (id, cliente_id, ultimo_acesso, status_conta)
VALUES
(1, 1, '2023-11-01 10:00:00', 'Ativa'),
(2, 2, '2023-11-02 11:15:00', 'Ativa'),
(3, 3, '2023-11-03 09:30:00', 'Inativa'),
(4, 4, '2023-11-04 14:45:00', 'Ativa'),
(5, 5, '2023-11-05 13:20:00', 'Ativa');

-- Inserir 5 entradas de dados na tabela cadastro_farmeceutico
INSERT INTO cadastro_farmeceutico (id, nome, data_nascimento, crf, telefone, email, enderecoFunc_id)
VALUES
(1, 'Ana Silva', '1980-05-20', '12345', '123-456-7890', 'ana@email.com', 1),
(2, 'Carlos Santos', '1975-08-15', '54321', '987-654-3210', 'carlos@email.com', 2),
(3, 'Eduarda Pereira', '1982-02-10', '67890', '567-890-1234', 'eduarda@email.com', 3),
(4, 'Fernando Alves', '1990-03-25', '98765', '234-567-8901', 'fernando@email.com', 4),
(5, 'Giselle Fernandes', '1995-11-12', '43210', '765-432-1098', 'giselle@email.com', 5);

-- Inserir 5 entradas de dados na tabela tarja_remedio com IDs automáticas
INSERT INTO tarja_remedio (nome_tarja)
VALUES
(DEFAULT, 'Tarja Vermelha'),
(DEFAULT, 'Tarja Preta'),
(DEFAULT, 'Tarja Amarela'),
(DEFAULT, 'Tarja Laranja'),
(DEFAULT, 'Sem Tarja');

-- Inserir 5 entradas de dados na tabela cadastr_medico
INSERT INTO cadastr_medico (id, farmaceutico_id, nome, especialidade, telefone, email)
VALUES
(1, 1, 'Dr. Carlos Silva', 'Cardiologia', '123-456-7890', 'carlos@email.com'),
(2, 2, 'Dra. Ana Santos', 'Pediatria', '987-654-3210', 'ana@email.com'),
(3, 3, 'Dr. Pedro Alves', 'Dermatologia', '567-890-1234', 'pedro@email.com'),
(4, 4, 'Dra. Maria Fernandes', 'Ginecologia', '234-567-8901', 'maria@email.com'),
(5, 5, 'Dr. João Pereira', 'Ortopedia', '765-432-1098', 'joao@email.com');

-- Inserir 5 entradas de dados na tabela historico_venda
INSERT INTO historico_venda (id, funcionario_id, cliente_id, quantidade, valor_total)
VALUES
(1, 1, 1, 3, 150.00),
(2, 2, 2, 2, 75.50),
(3, 3, 3, 4, 200.00),
(4, 4, 4, 1, 50.25),
(5, 5, 5, 2, 95.80);

-- Inserir 5 entradas de dados na tabela historico_entregador
INSERT INTO historico_entregador (id, motoboy_id, entregaPedido_id, tipo_evento, desc, valor_recebido)
VALUES
(1, 1, 1, 'Entrega Realizada', 'Entrega do Pedido A realizada com sucesso.', 20.00),
(2, 2, 2, 'Entrega Pendente', 'Entrega do Pedido B aguardando agendamento.', 0.00),
(3, 3, 3, 'Entrega Realizada', 'Entrega do Pedido C realizada com sucesso.', 30.00),
(4, 4, 4, 'Entrega Cancelada', 'Entrega do Pedido D cancelada devido a endereço incorreto.', 0.00),
(5, 5, 5, 'Entrega Realizada', 'Entrega do Pedido E realizada com sucesso.', 15.00);

-- Inserir 5 entradas de dados na tabela entrega_pedido
INSERT INTO entrega_pedido (id, entregador_id, cliente_id, data_entrega, status_entrega, endereco_entrega_cliente, desc)
VALUES
(1, 1, 1, '2023-11-01', 'Entregue', '123 Rua Principal', 'Entrega concluída com sucesso.'),
(2, 2, 2, '2023-11-02', 'Pendente', '456 Avenida Secundária', 'Aguardando confirmação de data de entrega.'),
(3, 3, 3, '2023-11-03', 'Entregue', '789 Rua do Comércio', 'Entrega concluída com sucesso.'),
(4, 4, 4, '2023-11-04', 'Cancelada', '101 Rua Tranquila', 'Entrega cancelada devido a endereço incorreto.'),
(5, 5, 5, '2023-11-05', 'Entregue', '222 Avenida Movimentada', 'Entrega concluída com sucesso.');


-- Inserir 5 entradas de dados na tabela cadastro_motoboy
INSERT INTO cadastro_motoboy (id, nome, data_nascimento, cpf, rg, cnh, placa_moto)
VALUES
(1, 'José Silva', '1990-05-15', '123.456.789-01', '12345', 'CNH123456', 'ABC123'),
(2, 'Marta Oliveira', '1985-08-20', '987.654.321-02', '54321', 'CNH987654', 'XYZ789'),
(3, 'Paulo Santos', '1982-02-10', '567.890.123-03', '67890', 'CNH567890', 'DEF456'),
(4, 'Eva Souza', '1995-03-25', '234.567.890-04', '98765', 'CNH234567', 'GHI789'),
(5, 'Carlos Ferreira', '1998-11-12', '345.678.901-05', '43210', 'CNH345678', 'JKL012');

-- Inserir 5 entradas de dados na tabela receita_farmaceutico com IDs e FKs de 1 a 5
INSERT INTO receita_farmaceutico (id, farmaceutico_id, cliente_id, data_prescricao, produto_id, tarja_id, medico_id)
VALUES
(1, 1, 1, '2023-11-01', 1, 1, 1),
(2, 2, 2, '2023-11-02', 2, 2, 2),
(3, 3, 3, '2023-11-03', 3, 3, 3),
(4, 4, 4, '2023-11-04', 4, 4, 4),
(5, 5, 5, '2023-11-05', 5, 5, 5);

-- Inserir 5 entradas de dados na tabela adicao_estoque com IDs e FKs de 1 a 5
INSERT INTO adicao_estoque (id, data_adicao, cadastro_funcionari_id, quantidade, fornecedor_id, produto_id)
VALUES
(1, '2023-11-01', 1, 100, 1, 1),
(2, '2023-11-02', 2, 75, 2, 2),
(3, '2023-11-03', 3, 50, 3, 3),
(4, '2023-11-04', 4, 60, 4, 4),
(5, '2023-11-05', 5, 80, 5, 5);

-- Inserir 5 entradas de dados na tabela fornecedor
INSERT INTO fornecedor (id, nome, cnpj, endereco, telefone, email, data_inicio)
VALUES
(1, 'Fornecedor A', '12345678901', '123 Rua Principal, Cidade A', '123-456-7890', 'fornecedorA@email.com', '2023-01-15'),
(2, 'Fornecedor B', '98765432102', '456 Avenida Secundária, Cidade B', '987-654-3210', 'fornecedorB@email.com', '2023-02-20'),
(3, 'Fornecedor C', '56789012303', '789 Rua do Comércio, Cidade C', '567-890-1234', 'fornecedorC@email.com', '2023-03-10'),
(4, 'Fornecedor D', '23456789004', '101 Rua Tranquila, Cidade D', '234-567-8901', 'fornecedorD@email.com', '2023-04-25'),
(5, 'Fornecedor E', '34567890105', '222 Avenida Movimentada, Cidade E', '765-432-1098', 'fornecedorE@email.com', '2023-05-12');

-- Inserir 5 entradas de dados na tabela historico_fornecedor
INSERT INTO historico_fornecedor (id, fornecedor_id, data_registro, descricao)
VALUES
(1, 1, '2023-11-01', 'Primeiro registro de fornecimento.'),
(2, 2, '2023-11-02', 'Fornecimento de produtos de beleza.'),
(3, 3, '2023-11-03', 'Pedido de reposição de estoque.'),
(4, 4, '2023-11-04', 'Nova negociação de preços.'),
(5, 5, '2023-11-05', 'Entrega atrasada de produtos farmacêuticos.');


-- Inserir 5 entradas de dados na tabela lote_remedio
INSERT INTO lote_remedio (id, produto_id, marca_id, numero_lote, data_vencimento, data_fabricacao, quantidade, desc)
VALUES
(1, 1, 1, 'Lote123', '2023-12-01', '2023-06-15', 1000, 'Lote de Paracetamol'),
(2, 2, 2, 'Lote456', '2023-11-30', '2023-07-20', 800, 'Lote de Ibuprofeno'),
(3, 3, 3, 'Lote789', '2023-12-15', '2023-08-10', 1200, 'Lote de Amoxicilina'),
(4, 4, 4, 'Lote101', '2023-11-25', '2023-09-05', 500, 'Lote de Omeprazol'),
(5, 5, 5, 'Lote222', '2023-12-10', '2023-09-12', 600, 'Lote de Loratadina');

-- Inserir 5 entradas de dados na tabela marca (de remédios)
INSERT INTO marca (id, nome_marca)
VALUES
(1, 'Marca A'),
(2, 'Marca B'),
(3, 'Marca C'),
(4, 'Marca D'),
(5, 'Marca E');

-- Inserir 5 entradas de dados na tabela lucro
INSERT INTO lucro (id, mes, valor_lucro, valor_investido)
VALUES
(1, 'Janeiro', 5000.00, 3000.00),
(2, 'Fevereiro', 5500.00, 3200.00),
(3, 'Março', 6000.00, 3300.00),
(4, 'Abril', 5800.00, 3100.00),
(5, 'Maio', 6200.00, 3400.00);

-- Inserir 5 entradas de dados na tabela vendas_cancelada
INSERT INTO vendas_cancelada (id, compra_id, motivo_cancelamento)
VALUES
(1, 1, 'Cliente solicitou o cancelamento da compra.'),
(2, 2, 'Produto fora de estoque.'),
(3, 3, 'Erro no preço do produto.'),
(4, 4, 'Cliente desistiu da compra.'),
(5, 5, 'Problemas na entrega do pedido.');

