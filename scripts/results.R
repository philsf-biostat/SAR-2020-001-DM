source('scripts/input.R', encoding = 'UTF-8')
library(philsfmisc)
library(tableone)

# tabela 1 - características dos participantes ----------------------------

# separar sexo da tab1
tab1.raw <- CreateTableOne(vars = setdiff(covars, "SEXO"),  data = dados)
tab1 <- print(tab1.raw, exact = TRUE, printToggle = FALSE, dropEqual = TRUE)

# sexo será exibido com ambos os níveis
tab1.raw.sex <- CreateTableOne(vars = "SEXO",  data = dados)
tab1.sex <- print(tab1.raw.sex, exact = TRUE, printToggle = FALSE, showAllLevels = TRUE)

# juntar as tabelas
tab1 <- cbind(level = rep("", 7), tab1[2:8]) # criar espaço para juntar os níveis de SEXO
tab1 <- rbind(tab1.sex, tab1) # juntar as tabelas

# tabela 2 - avaliação das vias cirúrgicas --------------------------------

tab2.raw <- CreateTableOne(vars = desfechos, strata = "GRUPO", data = dados)
tab2 <- print(tab2.raw, exact = TRUE, printToggle = FALSE)
