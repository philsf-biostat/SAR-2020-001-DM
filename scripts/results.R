source('scripts/input.R', encoding = 'UTF-8')
library(philsfmisc)
library(tableone)

# grupos de variáveis -----------------------------------------------------

covars <- c("IDADE", "SEXO", "DOMINANTE", "HAS", "DM", "TABAGISMO", "HT", "IVC")
desfechos <- c("EVD", "SATISFAÇÃO", "RETORNO", "ARTROSE", "TEMPO ARTROSE")

# tabela 1 - características dos participantes ----------------------------

tab1.raw <- CreateTableOne(vars = covars, strata = "GRUPO", data = dados)
tab1 <- print(tab1.raw, exact = TRUE)
