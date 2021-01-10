---
title: "Análise Estatística de ..."
author: '**De:** Felipe Figueiredo **Para:** Diego Rezende Martins'
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

Vinte participantes foram incluídos neste estudo.
A maioria destes eram homens (85%), com idade média de aproximadamente 55 anos (Tabela 1).
Dentre as comorbidades avaliadas a hipertensão arterial foi a de maior prevalência ocorrendo em 9 participantes (45%).


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

Table: **Tabela 1** Características clínicas e epidemiológicas dos participantes de estudo.
mean (SD): média (desvio padrão);
DOMINANTE: se o punho acometido era o lado dominante do participante;
DM: Diabetes mellitus;
HAS: Hipertensão arterial sistêmica;
HT: Hipotireoidismo;
IVC:

A enfermidade avaliada neste estudo foi observada no lado dominante em aproximadamente metade da amostra de estudo (55%), tanto em participantes destros ou canhotos.
Se esta amostra fosse representativa, isto indicaria que não deve haver associação entre o lado acometido e possíveis observações funcionais sobre os indivíduos incluídos.
Salientamos que além deste estudo (n = 20) ser muito pequeno para avaliar este tipo de hipótese, o estudo não foi desenho de modo a calcular a incidência.
Assim esta observação reflete apenas o resultado de associação, e não causalidade.



A tabela 2 exibe as comparações entre os dois grupos de estudo.
Não há evidências nesta amostra de que a troca de acesso cirúrgico altere significativamente o EVD pós-operatório (tamanho do efeito padronizado d = 0.43).


|            &nbsp;             |   Overall    |    DORSAL    |    VOLAR     |   p   | test |
|:-----------------------------:|:------------:|:------------:|:------------:|:-----:|:----:|
|             **n**             |      20      |      10      |      10      |       |      |
|      **EVD (mean (SD))**      | -5.88 (2.43) | -6.40 (1.90) | -5.35 (2.87) | 0.347 |  ¹   |
|  **SATISFAÇÃO (mean (SD))**   | 7.92 (2.04)  | 8.10 (1.66)  | 7.75 (2.44)  | 0.712 |  ¹   |
|        **RETORNO (%)**        |   9 (45.0)   |   5 (50.0)   |   4 (40.0)   | 1.000 |  ²   |
|        **ARTROSE (%)**        |  14 (70.0)   |   8 (80.0)   |   6 (60.0)   | 0.628 |  ²   |
| **TEMPO ARTROSE (mean (SD))** | 3.57 (1.09)  | 3.50 (1.20)  | 3.67 (1.03)  | 0.789 |  ¹   |

Table: **Tabela 2** Comparação dos desfechos clínicos nas duas vias cirúrgicas.
mean (SD): média (desvio padrão);
SATISFAÇÃO: grau de satisfação com o procedimento;
RETORNO: se o participante retornou às atividades laborais dentro do período de observação;
ARTROSE: se foi detectada alteração denegerativa nos exames radiográficos;
TEMPO ARTROSE: medido em anos.
¹ teste t de Student, ² teste exato de Fisher.

Também não foi possível detectar diferença na taxa de retorno ao trabalho após o procedimento, na ocorrência de artrose e, nos casos em que houve artrose, no tempo até sua ocorrência (Tabela 2).

# Exceções e Observações

É importante salientar que este estudo não tem poder estatístico suficiente para detectar diferenças significativas, a menos que o efeito clínico fosse desproporcionalmente maior em uma das vias.
O tamanho de efeito observado nesta amostra foi d = 0.43, enquanto que a análise de poder elaborada no SAP indicava que este estudo poderia detectar apenas efeitos superiores a 1.32 consistentemente.
Isto não representa uma limitação metodológica deste estudo, especialmente considerando o contexto acadêmico em que se apresenta.
Ainda assim é necessário ratificar que o mesmo não identifica evidências suficientes para uma mudança na assistência a esta enfermidade específica.

Uma alteração foi feita neste relatório em relação ao que foi definido no SAP:
o tempo até ocorrência de artrose seria apresentado apenas no perfil epidemiológico da amostra de estudo.
Como esta variável deve ser semanticamente apresentada conjuntamente à ocorrência da artrose, ambas foram avaliadas e apresentadas no escopo da análise inferencial (tabela 2).

# Conclusões

O perfil epidemiológico do participante que realizou este procedimento cirúrgico tem predominância do sexo masculino (85%), e embora todas as comorbidades tenham sido observadas a maior prevalência na amostra é de hipertensão (45%).
Os dados não indicam associação entre o lado acometido e a mão dominante.

Não há evidências de diferença no EVD ao comparar as vias acesso dorsal e volar.
Não há também evidências de diferença no grau de satisfação com o procedimento, na ocorrência de artrose nem no tempo até a observação de artrose.

# Referências

# Apêndice - Dados utilizados

Os dados utilizados neste relatório não podem ser publicados online por questões de sigilo.


