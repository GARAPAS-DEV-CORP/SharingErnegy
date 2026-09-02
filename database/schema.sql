-- ==========================================================
-- SHARE ENERGY - SCHEMA DO BANCO DE DADOS (PostgreSQL)
-- Arquivo: database/schema.sql
-- ==========================================================

-- Extensão para geração de UUID
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. TABELA DE USUÁRIOS
CREATE TABLE IF NOT EXISTS usuarios (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    documento VARCHAR(20), -- CPF ou CNPJ
    telefone VARCHAR(20),
    tipo_usuario VARCHAR(20) NOT NULL CHECK (tipo_usuario IN ('EMPRESA', 'INVESTIDOR', 'FORNECEDOR', 'ADMIN')),
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 2. TABELA DE UNIDADES CONSUMIDORAS (UCs)
CREATE TABLE IF NOT EXISTS unidades_consumidoras (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    empresa_id UUID NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    codigo_uc VARCHAR(50) NOT NULL,
    distribuidora VARCHAR(100) NOT NULL, -- Ex: Enel, Cemig, CPFL
    consumo_medio_kwh NUMERIC(10, 2) NOT NULL,
    valor_medio_mensal NUMERIC(10, 2),
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 3. TABELA DE OPORTUNIDADES (Geração Distribuída / Marketplace)
CREATE TABLE IF NOT EXISTS oportunidades (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    uc_id UUID NOT NULL REFERENCES unidades_consumidoras(id) ON DELETE CASCADE,
    potencia_estimada_kwp NUMERIC(8, 2) NOT NULL,
    investimento_estimado NUMERIC(12, 2) NOT NULL,
    economia_estimada_percentual NUMERIC(5, 2) DEFAULT 15.00,
    status VARCHAR(30) NOT NULL DEFAULT 'DISPONIVEL' CHECK (
        status IN ('CRIADA', 'DISPONIVEL', 'EM_ANALISE', 'FINANCIADA', 'EM_EXECUCAO', 'OPERACIONAL', 'CANCELADA')
    ),
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 4. TABELA DE PROPOSTAS TÉCNICAS (Fornecedores / Integradores Solares)
CREATE TABLE IF NOT EXISTS propostas (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    oportunidade_id UUID NOT NULL REFERENCES oportunidades(id) ON DELETE CASCADE,
    fornecedor_id UUID NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    potencia_proposta_kwp NUMERIC(8, 2) NOT NULL,
    valor_total NUMERIC(12, 2) NOT NULL,
    prazo_instalacao_dias INT NOT NULL,
    descricao_tecnica TEXT,
    status VARCHAR(20) NOT NULL DEFAULT 'PENDENTE' CHECK (
        status IN ('PENDENTE', 'ACEITA', 'RECUSADA')
    ),
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 5. TABELA DE APORTES (Investidores)
CREATE TABLE IF NOT EXISTS aportes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    oportunidade_id UUID NOT NULL REFERENCES oportunidades(id) ON DELETE CASCADE,
    investidor_id UUID NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
    valor_aporte NUMERIC(12, 2) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'INTENCAO' CHECK (
        status IN ('INTENCAO', 'CONFIRMADO', 'CANCELADO')
    ),
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Índices para otimização de consultas frequentes
CREATE INDEX IF NOT EXISTS idx_usuarios_email ON usuarios(email);
CREATE INDEX IF NOT EXISTS idx_ucs_empresa ON unidades_consumidoras(empresa_id);
CREATE INDEX IF NOT EXISTS idx_oportunidades_status ON oportunidades(status);
CREATE INDEX IF NOT EXISTS idx_propostas_oportunidade ON propostas(oportunidade_id);
CREATE INDEX IF NOT EXISTS idx_aportes_oportunidade ON aportes(oportunidade_id);
