# Share Energy — Requisitos

> Este documento lista os requisitos funcionais e não funcionais do Share Energy com base no material conceitual disponibilizado. O código-fonte do projeto não foi analisado nesta tarefa; portanto, nenhum requisito abaixo é classificado como **IMPLEMENTADO**. Requisitos sem definição suficiente estão marcados como **A DEFINIR**.

---

## Requisitos Funcionais

### Autenticação

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-001 | O sistema deve permitir que um usuário se autentique na plataforma. | Alta | PLANEJADO |
| RF-002 | O sistema deve permitir recuperação de senha. | Média | A DEFINIR |

### Usuários

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-003 | O sistema deve suportar três tipos de usuário: empresa, investidor e fornecedor. | Alta | PLANEJADO |
| RF-004 | O sistema deve permitir edição de dados de perfil pelo próprio usuário. | Média | A DEFINIR |

### Empresas

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-005 | O sistema deve permitir cadastro de empresa consumidora. | Alta | PLANEJADO |
| RF-006 | O sistema deve permitir o registro de dados de consumo energético da empresa. | Alta | PLANEJADO |
| RF-007 | O sistema deve permitir que a empresa acompanhe suas oportunidades e projetos. | Média | PLANEJADO |

### Investidores

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-008 | O sistema deve permitir cadastro de investidor. | Alta | PLANEJADO |
| RF-009 | O sistema deve permitir que o investidor defina preferências de investimento. | Média | PLANEJADO |
| RF-010 | O sistema deve permitir que o investidor visualize oportunidades compatíveis. | Média | PLANEJADO |

### Fornecedores

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-011 | O sistema deve permitir cadastro de fornecedor. | Alta | PLANEJADO |
| RF-012 | O sistema deve permitir que o fornecedor cadastre portfólio e projetos anteriores. | Média | PLANEJADO |
| RF-013 | O sistema deve permitir que o fornecedor envie propostas para oportunidades. | Média | PLANEJADO |

### Oportunidades

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-014 | O sistema deve gerar uma oportunidade a partir dos dados de consumo de uma empresa. | Alta | PLANEJADO |
| RF-015 | O sistema deve permitir consulta e listagem de oportunidades disponíveis. | Média | PLANEJADO |

### Match

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-016 | O sistema deve identificar compatibilidade entre empresa, investidor e fornecedor. | Alta | PLANEJADO |
| RF-017 | Critérios específicos de compatibilidade do Match. | — | A DEFINIR |

### Projetos

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-018 | O sistema deve permitir a formalização de um projeto a partir de uma proposta aceita. | Alta | PLANEJADO |
| RF-019 | O sistema deve permitir o acompanhamento do status de um projeto. | Média | PLANEJADO |

### Propostas

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-020 | O sistema deve permitir o envio de propostas para uma oportunidade. | Alta | PLANEJADO |
| RF-021 | O sistema deve permitir aceite ou recusa de uma proposta. | Alta | PLANEJADO |

### Dashboards

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-022 | O sistema deve exibir um painel com indicadores relevantes para cada tipo de usuário. | Média | PLANEJADO |
| RF-023 | Indicadores específicos exibidos em cada painel. | — | A DEFINIR |

### Notificações

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-024 | O sistema deve notificar usuários sobre eventos relevantes (ex.: novo match, nova proposta). | Média | PLANEJADO |

### Administração

| ID | Descrição | Prioridade | Status |
|---|---|---|---|
| RF-025 | O sistema deve permitir administração/moderação de cadastros e conteúdos da plataforma. | Média | A DEFINIR |

---

## Requisitos Não Funcionais

| ID | Categoria | Descrição | Prioridade | Status |
|---|---|---|---|---|
| RNF-001 | Segurança | O sistema deve proteger dados sensíveis de usuários (autenticação, dados financeiros e de consumo). | Alta | A DEFINIR |
| RNF-002 | Performance | O sistema deve responder às ações do usuário dentro de tempos aceitáveis de uso. | Média | A DEFINIR |
| RNF-003 | Disponibilidade | O sistema deve manter-se disponível para uso contínuo pelos participantes. | Média | A DEFINIR |
| RNF-004 | Escalabilidade | O sistema deve suportar crescimento no número de usuários e oportunidades. | Média | A DEFINIR |
| RNF-005 | Responsividade | A interface deve se adaptar a diferentes tamanhos de tela (desktop e mobile). | Média | A DEFINIR |
| RNF-006 | Manutenção | O sistema deve ser estruturado de forma a permitir manutenção e evolução contínua. | Média | A DEFINIR |
| RNF-007 | Logs | O sistema deve registrar atividades relevantes para fins de auditoria. | Média | A DEFINIR |
| RNF-008 | Privacidade | O sistema deve tratar dados pessoais de acordo com boas práticas de privacidade. | Alta | A DEFINIR |
| RNF-009 | LGPD | O sistema deve estar em conformidade com a Lei Geral de Proteção de Dados (LGPD), quando aplicável. | Alta | A DEFINIR |

---

## Observação Final

> Não identificado na implementação atual: nenhum dos requisitos acima foi confirmado em código-fonte, pois este não foi disponibilizado para análise. As prioridades atribuídas refletem uma estimativa baseada na descrição conceitual do projeto e podem ser revisadas.
