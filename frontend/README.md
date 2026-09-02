# 🌐 FRONTEND — Share Energy

Este guia é um tutorial direto e simples para a equipe de desenvolvedores configurar, rodar e evoluir o Frontend da aplicação.

---

## 🎯 1. Tecnologias Utilizadas (100% Gratuitas)
* **Framework**: React 19 + TypeScript
* **Build Tool**: Vite
* **Estilização**: Tailwind CSS v4
* **Ícones**: Lucide React
* **Animações**: Motion (Framer Motion)
* **Comunicação HTTP**: Fetch API / Axios

---

## 🚀 2. Pré-requisitos
* Node.js v18+ ou v20+ instalado
* Gerenciador de pacotes: `npm`, `yarn` ou `pnpm`

---

## 📦 3. Instalação e Execução

Para rodar o frontend localmente em modo de desenvolvimento:

```bash
# 1. Acesse a pasta do projeto (ou pasta frontend se separada)
cd frontend

# 2. Instale as dependências
npm install

# 3. Inicie o servidor de desenvolvimento
npm run dev
```

A aplicação estará acessível em: `http://localhost:5173` (ou `http://localhost:3000`).

---

## 📁 4. Estrutura de Pastas Recomendada

```text
frontend/
├── public/                 # Assets estáticos (logos, favicons)
├── src/
│   ├── assets/             # Imagens e ícones locais
│   ├── components/         # Componentes reutilizáveis (botões, cards, navbar)
│   │   ├── layout/         # Header, Sidebar, Footer
│   │   ├── ui/             # Botões, inputs, modais
│   │   └── forms/          # Formulários de cadastro
│   ├── pages/              # Telas da aplicação
│   │   ├── LandingPage/    # Apresentação do Share Energy
│   │   ├── Auth/           # Login e Cadastro (Empresa, Investidor, Fornecedor)
│   │   ├── Empresa/        # Dashboard de consumo e UCs da empresa
│   │   ├── Investidor/     # Oportunidades de aporte e rentabilidade
│   │   └── Fornecedor/     # Envio e gestão de propostas técnicas
│   ├── services/           # Chamadas para a API do backend (api.ts)
│   ├── hooks/              # Custom hooks (useAuth, useFetch)
│   ├── types/              # Interfaces TypeScript compartilhadas
│   ├── App.tsx             # Roteamento e layout base
│   ├── main.tsx            # Ponto de entrada do React
│   └── index.css           # Estilos globais e Tailwind CSS
├── index.html
├── package.json
└── vite.config.ts
```

---

## 🔑 5. Variáveis de Ambiente (`.env`)

Crie um arquivo `.env` na raiz do frontend:

```env
# URL base da API do Backend
VITE_API_URL=http://localhost:3000/api
```

---

## 🎨 6. Fluxos de Telas do MVP

1. **Pública / Landing Page**: Apresentação da proposta de valor e botões de cadastro segmentados.
2. **Autenticação**:
   * Login unificado com e-mail e senha.
   * Cadastro com seleção de perfil (`EMPRESA`, `INVESTIDOR`, `FORNECEDOR`).
3. **Área da Empresa**:
   * Cadastrar Unidade Consumidora (UC), distribuidora e histórico de consumo médio (kWh).
   * Visualizar status da oportunidade gerada.
4. **Área do Investidor**:
   * Listar oportunidades disponíveis com estimativa de investimento e retorno.
   * Manifestar interesse de aporte financeiro.
5. **Área do Fornecedor**:
   * Visualizar oportunidades que necessitam de usina solar.
   * Submeter proposta/orçamento técnico.

---

## 🛠️ 7. Comandos Úteis

| Comando | Descrição |
| :--- | :--- |
| `npm run dev` | Inicia o frontend em ambiente de desenvolvimento com hot-reload. |
| `npm run build` | Compila o projeto otimizado para produção na pasta `dist/`. |
| `npm run preview` | Visualiza o build de produção localmente. |
