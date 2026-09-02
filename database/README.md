# 🗄️ DATABASE — Share Energy

Guia e tutorial simples para a equipe de desenvolvimento configurar, executar scripts SQL e manter a base de dados do Share Energy.

---

## 🎯 1. Tecnologias Recomendadas (100% Gratuitas)
* **SGBD Relacional**: PostgreSQL (versão 14, 15 ou 16)
* **Opções de Ambiente**:
  * **Opção Local 1 (Docker)**: Roda instantaneamente sem instalar o PostgreSQL no sistema operacional.
  * **Opção Local 2 (Instalação Nativa)**: PostgreSQL instalado diretamente no Linux, macOS ou Windows.
  * **Opção Nuvem Gratuita**: **Supabase** ou **Neon.tech** (PostgreSQL gerenciado gratuito com interface web e pool de conexões).

---

## 🚀 2. Como Subir o Banco Rapidamente

### Opção A: Usando Docker (Recomendada)
Se tiver o Docker instalado, crie ou execute o container com o comando:

```bash
docker run --name share_energy_db \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=share_energy \
  -p 5432:5432 \
  -d postgres:16-alpine
```

### Opção B: Conectar via CLI / Terminal
Para acessar o banco via terminal:

```bash
psql -U postgres -h localhost -d share_energy
```

---

## 📁 3. Estrutura de Pastas de Banco

```text
database/
├── README.md               # Este tutorial
├── schema.sql              # Estrutura completa de tabelas e relacionamentos DDL
├── seeds.sql               # Dados iniciais para teste (usuários, UCs, propostas fictícias)
└── migrations/             # Scripts de evolução do banco ordenados por versão
    ├── 001_create_usuarios.sql
    ├── 002_create_ucs_e_oportunidades.sql
    └── 003_create_propostas_e_aportes.sql
```

---

## 📊 4. Modelo de Dados do MVP (Tabelas Principais)

O banco é estruturado com integridade referencial (chaves estrangeiras) em torno das 6 entidades essenciais do negócio:

```text
┌─────────────────┐       ┌───────────────────────────┐
│    usuarios     │──────<│    unidades_consumidoras  │
│ (id, email, ...)│       │ (id, empresa_id, kWh, ...)│
└────────┬────────┘       └─────────────┬─────────────┘
         │                              │ 1:1
         │                              ▼
         │                ┌───────────────────────────┐
         │                │       oportunidades       │
         │                │(id, uc_id, status, kWp...)│
         │                └─────────────┬─────────────┘
         │                              │
         │                              │ 1:N
         │ 1:N                          ▼
         ├───────────────────────<┌───────────┐
         ▼                        │ propostas │ (fornecedor_id, valor, status)
   ┌───────────┐                  └───────────┘
   │  aportes  │ (investidor_id, oportunidade_id, valor_investido)
   └───────────┘
```

---

## 📜 5. Como Executar os Scripts SQL

Para rodar os scripts e popular a base do zero:

```bash
# 1. Executar a criação das tabelas (Schema DDL)
psql -U postgres -d share_energy -f database/schema.sql

# 2. Executar os dados de teste (Seeds DML)
psql -U postgres -d share_energy -f database/seeds.sql
```

---

## 📋 6. Dicionário Sucinto de Tabelas

1. **`usuarios`**: Guarda credenciais (e-mail, senha criptografada em bcrypt), nome, telefone, documento (CPF/CNPJ) e o perfil (`EMPRESA`, `INVESTIDOR`, `FORNECEDOR`, `ADMIN`).
2. **`unidades_consumidoras`**: Guarda as UCs da empresa consumidora, endereço, distribuidora de energia e consumo médio mensal em kWh.
3. **`oportunidades`**: Registro gerado automaticamente a partir da demanda de uma UC para captação no marketplace com status (`CRIADA`, `DISPONIVEL`, `EM_ANALISE`, `FINANCIADA`, `CONCLUIDA`).
4. **`propostas`**: Orçamentos técnicos cadastrados por fornecedores solares para atender a uma oportunidade (potência, valor em R$, prazo).
5. **`aportes`**: Intenções e alocações de capital feitas por investidores para custear uma usina.
