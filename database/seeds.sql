-- ==========================================================
-- SHARE ENERGY - SEEDS INICIAIS PARA TESTE
-- Arquivo: database/seeds.sql
-- Senha padrão para os usuários de teste: '123456'
-- Hash bcrypt de exemplo para '123456': $2a$10$wN1vG69kGq8qK2T8e0Z2gO6k6h0iYv5Jt6c7V7b8N9m0L1k2J3H4a
-- ==========================================================

-- 1. Inserindo Usuários de Teste (Empresa, Investidor, Fornecedor)
INSERT INTO usuarios (id, nome, email, senha_hash, documento, telefone, tipo_usuario)
VALUES
  ('a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 'Indústria Metalúrgica Solar Ltda', 'empresa@teste.com', '$2a$10$wN1vG69kGq8qK2T8e0Z2gO6k6h0iYv5Jt6c7V7b8N9m0L1k2J3H4a', '12.345.678/0001-90', '(11) 98765-4321', 'EMPRESA'),
  ('b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e', 'Roberto Capital Investimentos', 'investidor@teste.com', '$2a$10$wN1vG69kGq8qK2T8e0Z2gO6k6h0iYv5Jt6c7V7b8N9m0L1k2J3H4a', '123.456.789-00', '(21) 99887-6655', 'INVESTIDOR'),
  ('c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f', 'Voltz Soluções Fotovoltaicas', 'fornecedor@teste.com', '$2a$10$wN1vG69kGq8qK2T8e0Z2gO6k6h0iYv5Jt6c7V7b8N9m0L1k2J3H4a', '98.765.432/0001-10', '(31) 97766-5544', 'FORNECEDOR')
ON CONFLICT (email) DO NOTHING;

-- 2. Inserindo Unidade Consumidora (UC)
INSERT INTO unidades_consumidoras (id, empresa_id, codigo_uc, distribuidora, consumo_medio_kwh, valor_medio_mensal, cidade, estado)
VALUES
  ('d4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 'UC-8849201', 'Enel SP', 8500.00, 7250.00, 'São Paulo', 'SP')
ON CONFLICT DO NOTHING;

-- 3. Inserindo Oportunidade no Marketplace
INSERT INTO oportunidades (id, uc_id, potencia_estimada_kwp, investimento_estimado, economia_estimada_percentual, status)
VALUES
  ('e5f6a7b8-c9d0-1e2f-3a4b-5c6d7e8f9a0b', 'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', 65.50, 240000.00, 18.50, 'DISPONIVEL')
ON CONFLICT DO NOTHING;

-- 4. Inserindo Proposta Técnica do Fornecedor
INSERT INTO propostas (id, oportunidade_id, fornecedor_id, potencia_proposta_kwp, valor_total, prazo_instalacao_dias, descricao_tecnica, status)
VALUES
  ('f6a7b8c9-d0e1-2f3a-4b5c-6d7e8f9a0b1c', 'e5f6a7b8-c9d0-1e2f-3a4b-5c6d7e8f9a0b', 'c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f', 68.00, 235000.00, 60, 'Módulos Tier 1 monocristalinos 550W com inversores string trifásicos de alta eficiência.', 'PENDENTE')
ON CONFLICT DO NOTHING;
