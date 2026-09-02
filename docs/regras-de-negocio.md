# Share Energy — Regras de Negócio

> Este documento reúne as regras de negócio identificadas a partir da descrição conceitual do projeto Share Energy fornecida até o momento. Não houve acesso ao código-fonte do projeto nesta análise — portanto, nenhuma regra abaixo é classificada como implementada. Regras não definidas estão marcadas como **Status: A definir**, e funcionalidades futuras como **Status: Planejado**.

---

## 1. Tipos de Usuário

**RB-001** — A plataforma prevê três tipos principais de participante: Empresa Consumidora, Investidor e Fornecedor.
**Status: Planejado**

**RB-002** — Regras sobre múltiplos perfis por usuário (ex.: um mesmo usuário sendo simultaneamente investidor e fornecedor).
**Status: A definir**

---

## 2. Cadastro

**RB-003** — Empresas devem poder se cadastrar informando dados relacionados à sua operação e ao consumo energético.
**Status: Planejado**

**RB-004** — Investidores devem poder se cadastrar informando capital disponível e preferências de investimento.
**Status: Planejado**

**RB-005** — Fornecedores devem poder se cadastrar informando portfólio e especialização.
**Status: Planejado**

**RB-006** — Campos obrigatórios, formato de dados e validações de cada cadastro.
**Status: A definir**

---

## 3. Autenticação

**RB-007** — A plataforma deverá possuir mecanismo de autenticação de usuários.
**Status: Planejado**

**RB-008** — Regras de recuperação de senha, verificação de identidade/documento (KYC) e níveis de confiança de cadastro.
**Status: A definir**

---

## 4. Empresas Consumidoras

**RB-009** — A empresa deve poder registrar seu consumo energético (ex.: consumo médio, histórico, valor de fatura).
**Status: Planejado**

**RB-010** — Regras sobre quantas oportunidades uma mesma empresa pode ter simultaneamente ativas.
**Status: A definir**

---

## 5. Investidores

**RB-011** — O investidor deve poder definir preferências (ex.: faixa de investimento, localização de interesse, prazo).
**Status: Planejado**

**RB-012** — Regras de limite mínimo/máximo de investimento por operação.
**Status: A definir**

**RB-013** — Regras sobre reinvestimento de receitas obtidas em projetos anteriores.
**Status: A definir** *(mecanismo citado como possibilidade futura, sem definição de funcionamento)*

---

## 6. Fornecedores

**RB-014** — O fornecedor deve poder cadastrar seu portfólio e projetos anteriores.
**Status: Planejado**

**RB-015** — Critérios de habilitação/verificação de um fornecedor na plataforma.
**Status: A definir**

---

## 7. Oportunidades

**RB-016** — Uma oportunidade é gerada a partir dos dados de consumo informados por uma empresa.
**Status: Planejado**

**RB-017** — Regras de expiração, cancelamento ou atualização de uma oportunidade.
**Status: A definir**

---

## 8. Sistema de Match

**RB-018** — O sistema deverá identificar compatibilidade entre a necessidade da empresa, o capital do investidor e a capacidade do fornecedor.
**Status: Planejado**

**RB-019** — Critérios/algoritmo utilizado para determinar compatibilidade no Match.
**Status: A definir**

---

## 9. Propostas

**RB-020** — Investidores e/ou fornecedores devem poder enviar propostas para uma oportunidade.
**Status: Planejado**

**RB-021** — Regras de aceite, recusa, contraproposta e prazo de validade de uma proposta.
**Status: A definir**

---

## 10. Projetos

**RB-022** — Após o aceite de uma proposta, é formalizado um projeto.
**Status: Planejado**

**RB-023** — Ciclo de vida e transições de status de um projeto.
**Status: A definir**

---

## 11. Status

**RB-024** — Oportunidades, propostas e projetos deverão possuir um status que reflita sua etapa atual.
**Status: A definir** *(os status possíveis e suas transições ainda não foram especificados)*

---

## 12. Permissões

**RB-025** — Cada tipo de usuário (empresa, investidor, fornecedor) deverá ter acesso apenas às informações e ações pertinentes ao seu perfil.
**Status: A definir**

**RB-026** — Regras específicas de administração/moderação da plataforma.
**Status: A definir**

---

## 13. Comissões

**RB-027** — A plataforma poderá cobrar comissão pela intermediação de operações.
**Status: Planejado**

**RB-028** — Percentual, forma de cobrança e momento de cobrança da comissão.
**Status: A definir**

---

## 14. Publicidade

**RB-029** — Fornecedores poderão contratar espaços de divulgação/destaque dentro da plataforma.
**Status: Planejado**

**RB-030** — Regras comerciais, precificação e limites de publicidade.
**Status: A definir**

---

## 15. Pagamentos

**RB-031** — Possível processamento de pagamentos relacionados a comissões, planos ou publicidade.
**Status: A definir** *(não há definição de meio de pagamento, gateway ou fluxo financeiro)*

---

## 16. Notificações

**RB-032** — Usuários poderão ser notificados sobre eventos relevantes (ex.: novo match, nova proposta, mudança de status).
**Status: Planejado**

**RB-033** — Canais de notificação (e-mail, push, in-app) e regras de frequência.
**Status: A definir**

---

## 17. Regras de Validação

**RB-034** — Validação de dados de cadastro, consumo energético e capital informado.
**Status: A definir**

**RB-035** — Prevenção de fraude ou informações incorretas nos cadastros.
**Status: A definir**

---

## Observação Final

> Não identificado na implementação atual: nenhuma das regras acima pôde ser confirmada em código-fonte, pois este não foi disponibilizado para análise nesta tarefa. Todas as regras descritas refletem exclusivamente o material conceitual fornecido sobre o projeto Share Energy.
