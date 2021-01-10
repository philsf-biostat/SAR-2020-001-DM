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

# Introdução

## Objetivos

## Recepção e tratamento dos dados

# Metodologia

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

