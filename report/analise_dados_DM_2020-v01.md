---
title: "Análise Estatística de ..."
author: '**De:** Felipe Figueiredo **Para:** ___'
date: '**Data: ** dd/mm/aaaa'
output:
  html_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    keep_md: yes
    number_sections: yes
    toc: yes
  pdf_document:
    number_sections: yes
    toc: yes
  word_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    reference_docx: misc/style.docx
    toc: yes
subtitle: 'RELATÓRIO: analise_dados_DM_2020-v01'
toc-title: "Sumário"
---



---

**Histórico do documento**


|Versão |Alterações     |
|:------|:--------------|
|01     |Versão inicial |

---

<!-- **Assinaturas** -->





# Lista de abreviaturas

- DM: Diabetes mellitus
- EVD:
- HAS: Hipertensão arterial sistêmica
- HT: Hipotireoidismo
- IVC:

# Introdução

## Objetivos

Avaliar se há diferença entre uso de das técnicas de acesso cirúrgico volar e dorsal em indicadores clínicos.

## Recepção e tratamento dos dados

Os dados recebidos foram reorganizados em uma tabela retangular, agrupando todos os casos em linhas com uma coluna por variável.
A coluna ID foi redefinida de modo que haja um ID único para cada participante incluído no estudo, independente do grupo.
Com isso, a tabela de dados analíticos aprensenta uma linha para cada observação das variáveis, i.e., cada um dos vinte participantes incluídos no estudo.

As seguintes novas variáveis foram criadas a partir para a análise:

- **EVD:** diferença entre EVD pré e pós (numérica)
- **DOMINANTE:** se o lado acometido era o lado dominante do participante (dicotômica)

As seguintes variáveis foram limpas para adequação nas análises:

- **TEMPO ARTROSE:** convertida em valores numéricos
  - valores possíveis: número (anos) ou célula vazia
- **Comorbidades:** redefinidas como variáveis dicotômicas
  - reorganizadas em colunas independentes
  - valores possíveis: nome da comorbidade ou célula vazia
- **RETORNO:** Esta coluna é repetida em todas as quatro planilhas
  - foram utilizados as duas primeiras ocorrências deste dado:
    - Folha 1 - Tabela 1 - Volar
    - Folha 1 - Tabela 2 - Dorsal

# Metodologia

## Variáveis e desfechos analisados

Foram avaliados quatro desfechos na comparação entre os dois grupos de participantes.
O desfecho primário considerado foi a diferença na EVD pré e pós nos dois grupos.
Além deste foram avaliados os seguintes desfechos secundários: Alteração degenerativa (artrose) bem como o tempo (em anos) para sua observação, o grau de satisfação e o retorno à profissão.

Adicionalmente as seguintes características foram descritas para todos os participantes do estudo:
Idade (em anos),
Sexo (feminino/masculino),
Acometimento no lado dominante
e a presença de comorbidades (HAS, DM, Tabagismo, HT e IVC).

## Análises estatísticas

As variáveis numéricas foram descritas como média e desvio padrão.
As variáveis categóricas foram descritas como frequência e proporção.
As proporções foram apresentadas como porcentagem.
A comparação de variáveis numéricas entre os dois grupos foi avaliada com o teste t de Student não pareado.
O p-valor do teste t de student foi apresentado na tabela descritiva dos resultados
A comparação de variáveis categóricas entre os dois grupos foi avaliada com o teste exato de Fisher.
Todas as análises foram feitas com nível de significância de 5%.
Todos os testes de significância e intervalos de confiança calculados foram bilaterais.

Esta análise foi realizada utilizando-se o software `R` versão 4.0.3.

# Resultados


|        &nbsp;         |     Overall      |
|:---------------------:|:----------------:|
|         **n**         |        20        |
| **IDADE (mean (SD))** |  54.85 (11.08)   |
|  **SEXO = F/M (%)**   | 3/17 (15.0/85.0) |
|   **DOMINANTE (%)**   |    11 (55.0)     |
|      **HAS (%)**      |     9 (45.0)     |
|      **DM (%)**       |     4 (20.0)     |
|   **TABAGISMO (%)**   |     3 (15.0)     |
|      **HT (%)**       |     2 (10.0)     |
|      **IVC (%)**      |     1 ( 5.0)     |

Table: **Tabela 1**


|            &nbsp;             |   Overall    |    DORSAL    |    VOLAR     |   p   | test |
|:-----------------------------:|:------------:|:------------:|:------------:|:-----:|:----:|
|             **n**             |      20      |      10      |      10      |       |      |
|      **EVD (mean (SD))**      | -5.88 (2.43) | -6.40 (1.90) | -5.35 (2.87) | 0.347 |  ¹   |
|  **SATISFAÇÃO (mean (SD))**   | 7.92 (2.04)  | 8.10 (1.66)  | 7.75 (2.44)  | 0.712 |  ¹   |
|        **RETORNO (%)**        |   9 (45.0)   |   5 (50.0)   |   4 (40.0)   | 1.000 |  ²   |
|        **ARTROSE (%)**        |  14 (70.0)   |   8 (80.0)   |   6 (60.0)   | 0.628 |  ²   |
| **TEMPO ARTROSE (mean (SD))** | 3.57 (1.09)  | 3.50 (1.20)  | 3.67 (1.03)  | 0.789 |  ¹   |

Table: **Tabela 2**
¹ teste t de Student, ² teste exato de Fisher.
<!-- # Exceções e Desvios do teste -->

# Conclusões


# Referências

# Apêndice

