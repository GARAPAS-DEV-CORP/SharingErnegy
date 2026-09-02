# ⚙️ BACKEND — Share Energy

Guia e tutorial direto para a equipe de desenvolvedores configurar, rodar e implementar APIs e regras de negócio no Backend.

---

## 🎯 1. Tecnologias Utilizadas (100% Gratuitas)
* **Runtime**: Node.js v18+ / v20+
* **Linguagem**: TypeScript
* **Framework Web**: Express.js
* **Autenticação**: JWT (`jsonwebtoken`) + Criptografia de senhas com `bcryptjs`
* **Validação**: Zod ou Joi
* **Conexão com Banco**: `pg` (Node-Postgres) ou Prisma/Drizzle (ORM gratuito)
* **Execução em Dev**: `tsx` ou `ts-node-dev`

---

## 🚀 2. Pré-requisitos
* Node.js v18+ instalado
* Instância de banco de dados (PostgreSQL local ou na nuvem gratuita como Neon/Supabase)

---

## 📦 3. Instalação e Execução

```bash
# 1. Acesse a pasta do backend
cd backend

# 2. Instale as dependências
npm install

# 3. Configure o arquivo .env (vide seção 5)
cp .env.example .env

# 4. Inicie o servidor em modo de desenvolvimento
npm run dev
```

O servidor iniciará em: `http://localhost:3000` (ou porta configurada no `.env`).

---

## 📁 4. Estrutura de Pastas Recomendada

```text
backend/
├── src/
│   ├── config/             # Configurações gerais (banco de dados, JWT, CORS)
│   │   └── database.ts     # Pool de conexão com o PostgreSQL
│   ├── controllers/        # Controladores de requisição HTTP
│   │   ├── authController.ts
│   │   ├── ucController.ts
│   │   ├── oportunidadeController.ts
│   │   └── propostaController.ts
│   ├── middlewares/        # Middlewares (authMiddleware, errorHandler)
│   │   ├── auth.ts         # Validação do token JWT e verificação de perfil
│   │   └── validate.ts     # Validação de schemas com Zod
│   ├── models/             # Tipos, interfaces e queries SQL
│   │   ├── Usuario.ts
│   │   ├── UnidadeConsumidora.ts
│   │   ├── Oportunidade.ts
│   │   └── Proposta.ts
│   ├── routes/             # Definição das rotas REST
│   │   ├── authRoutes.ts
│   │   ├── ucRoutes.ts
│   │   ├── oportunidadeRoutes.ts
│   │   └── propostaRoutes.ts
│   ├── services/           # Regras de negócio e cálculos energéticos
│   │   └── matchService.ts # Algoritmo de conexão Empresa ⇄ Investidor ⇄ Fornecedor
│   ├── app.ts              # Configuração do Express e middlewares globais
│   └── server.ts           # Inicialização do servidor HTTP e conexão com DB
├── .env.example
├── package.json
└── tsconfig.json
```

---

## 🔑 5. Variáveis de Ambiente (`.env`)

Exemplo de `.env`:

```env
# Porta do servidor
PORT=3000

# Chave secreta para assinatura dos tokens JWT
JWT_SECRET=sua_chave_secreta_super_segura_aqui
JWT_EXPIRES_IN=7d

# Conexão com o Banco de Dados PostgreSQL (Local ou Nuvem Gratuita)
DATABASE_URL=postgres://usuario:senha@localhost:5432/share_energy

# URL do Frontend permitida no CORS
FRONTEND_URL=http://localhost:5173
```

---

## 📡 6. Rotas Principais do MVP

### Autenticação & Usuários
* `POST /api/auth/cadastro` — Registra novo usuário (`EMPRESA`, `INVESTIDOR` ou `FORNECEDOR`).
* `POST /api/auth/login` — Autentica o usuário e retorna o Token JWT com o perfil.
* `GET /api/auth/me` — Retorna os dados do usuário autenticado via header `Authorization: Bearer <token>`.

### Unidades Consumidoras (Empresas)
* `POST /api/ucs` — Cadastra uma nova Unidade Consumidora (nome, distribuidora, consumo kWh médio).
* `GET /api/ucs` — Lista as UCs vinculadas à empresa logada.

### Oportunidades de Energia (Marketplace)
* `GET /api/oportunidades` — Lista oportunidades ativas (filtradas para investidores e fornecedores).
* `GET /api/oportunidades/:id` — Detalha métricas da oportunidade (potência sugerida, economia estimada).

### Propostas Técnicas (Fornecedores)
* `POST /api/oportunidades/:id/propostas` — Fornecedor submete orçamento de usina.
* `GET /api/oportunidades/:id/propostas` — Lista propostas submetidas para avaliação da empresa/investidor.

### Aportes (Investidores)
* `POST /api/oportunidades/:id/interesse` — Registra manifestação de aporte do investidor.

---

## 🛠️ 7. Comandos Úteis

| Comando | Descrição |
| :--- | :--- |
| `npm run dev` | Inicia o servidor em modo watch recarregando automaticamente. |
| `npm run build` | Transpila o TypeScript para JavaScript na pasta `dist/`. |
| `npm start` | Roda o código compilado em produção. |
