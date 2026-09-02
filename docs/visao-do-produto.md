# Share Energy — Visão do Produto

## 1. Visão Geral

O **Share Energy** é uma plataforma que pretende conectar três tipos de participantes do setor de energia:

- empresas com alto custo de energia elétrica que desejam reduzir esse custo;
- investidores interessados em participar de projetos de geração de energia;
- empresas especializadas em energia solar (desenvolvimento, instalação e manutenção).

A plataforma pretende atuar como uma **camada de conexão, organização e acompanhamento** dessas oportunidades, e não necessariamente como executora direta dos projetos.

> **Status deste documento:** descreve a *visão* do produto. Funcionalidades citadas ao longo do texto não devem ser interpretadas como implementadas, salvo quando explicitamente indicado.

---

## 2. O Problema

Empresas com alto consumo de energia elétrica enfrentam custos operacionais elevados. A migração para energia solar pode reduzir esse custo, mas normalmente exige:

- capital para investimento inicial;
- conhecimento técnico para dimensionar o projeto;
- acesso a fornecedores qualificados;
- alguém que acompanhe a operação após a instalação.

Paralelamente, existem investidores com capital disponível interessados em projetos de geração de energia, mas sem um canal estruturado para encontrar oportunidades compatíveis com seu perfil.

---

## 3. A Solução

O Share Energy propõe centralizar, em uma única plataforma:

- o cadastro da necessidade energética de uma empresa;
- o cadastro do perfil e capacidade de investidores;
- o cadastro do portfólio de fornecedores especializados;
- um mecanismo de identificação de compatibilidade entre essas partes (Match).

**Exemplo conceitual:**
Uma empresa possui determinado consumo de energia e deseja reduzir seus custos. Ela informa seus dados na plataforma. O Share Energy identifica oportunidades compatíveis e pode conectar essa empresa a um investidor e/ou fornecedor capaz de viabilizar um projeto de geração de energia.

---

## 4. Objetivo

Reduzir a distância entre quem precisa de um projeto de energia solar, quem tem capital para viabilizá-lo e quem tem capacidade técnica para executá-lo — centralizando a conexão, a organização das informações e o acompanhamento em um único ambiente digital.

---

## 5. Público-Alvo

- Empresas com consumo relevante de energia elétrica que buscam reduzir custos;
- Investidores (pessoas físicas ou jurídicas) interessados em oportunidades no setor de energia;
- Empresas fornecedoras/desenvolvedoras de projetos de energia solar.

---

## 6. Participantes da Plataforma

### 6.1 Empresa Consumidora
Empresa que possui uma necessidade energética e busca reduzir custos através de um projeto de energia solar.

### 6.2 Investidor
Pessoa física ou jurídica com capital disponível interessada em participar, financeiramente, de projetos de geração de energia.

### 6.3 Fornecedor
Empresa especializada em desenvolvimento, instalação e/ou manutenção de projetos de energia solar.

> Regras específicas sobre cadastro, permissões e obrigações de cada participante estão descritas em `regras-de-negocio.md`.

---

## 7. Funcionamento da Plataforma (conceitual)

### 7.1 Fluxo Principal

```text
Empresa informa dados de consumo energético
            │
            ▼
Plataforma identifica oportunidade
            │
            ▼
Sistema de Match busca compatibilidade
   (investidor e/ou fornecedor)
            │
            ▼
Conexão entre as partes
            │
            ▼
Projeto de geração de energia
            │
            ▼
Acompanhamento do projeto
```

Este fluxo representa a **visão pretendida** do produto. Não descreve necessariamente uma implementação existente.

### 7.2 Sistema de Match

O sistema de Match é o mecanismo conceitual responsável por identificar compatibilidade entre:

- a necessidade energética/característica do projeto de uma empresa;
- o capital e as preferências de um investidor;
- a capacidade e o portfólio de um fornecedor.

**Status: Planejado** — os critérios e o algoritmo de compatibilidade ainda não estão definidos.

### 7.3 Ciclo de um Projeto (conceitual)

```text
1. Identificação da necessidade energética
2. Estruturação da oportunidade
3. Match com investidor e/ou fornecedor
4. Envio e negociação de propostas
5. Formalização do projeto
6. Implementação/instalação
7. Geração de energia
8. Acompanhamento operacional e financeiro
```

**Status: Planejado** — este ciclo descreve a intenção do produto; as etapas específicas de cada fase ainda não estão detalhadas ou implementadas.

---

## 8. Proposta de Valor

| Participante | Valor entregue (pretendido) |
|---|---|
| Empresa consumidora | Acesso facilitado a projetos de redução de custo energético |
| Investidor | Acesso a oportunidades organizadas de investimento em energia |
| Fornecedor | Acesso a demanda qualificada de projetos |

---

## 9. Visão Futura

De acordo com o material disponibilizado sobre o projeto, o Share Energy poderá futuramente incorporar:

- cadastro de empresas, investidores e fornecedores;
- cadastro de consumo energético;
- oportunidades;
- sistema de Match;
- propostas;
- projetos;
- acompanhamento;
- dashboards;
- relatórios;
- publicidade;
- comissão por operações;
- gestão de projetos;
- mecanismos de reinvestimento.

**Status: Planejado** — nenhuma dessas funcionalidades deve ser considerada implementada apenas por constar nesta visão.

---

## 10. O que é Visão, o que é Implementação e o que é Planejamento

Para evitar ambiguidade, este documento separa explicitamente três categorias:

| Categoria | Significado |
|---|---|
| **Visão pretendida** | Descreve o que o Share Energy pretende ser/fazer como produto |
| **Implementado** | Já existe no código/sistema atual |
| **Planejado** | Ainda não existe; é uma funcionalidade futura |

> Não foi fornecido, até o momento, acesso ao código-fonte do projeto para esta análise. Portanto, **nenhuma funcionalidade citada neste documento pode ser classificada como "Implementada"** — todas as menções a funcionalidades descrevem a visão pretendida ou funcionalidades planejadas, conforme indicado.
>
> Não identificado na implementação atual.
