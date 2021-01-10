source('scripts/input.R', encoding = 'UTF-8')
library(philsfmisc)
library(tableone)

# tabela 1 - características dos participantes ----------------------------

tab1.raw <- CreateTableOne(vars = covars,  data = dados)
tab1 <- print(tab1.raw, exact = TRUE, printToggle = FALSE)

# tabela 2 - avaliação das vias cirúrgicas --------------------------------

tab2.raw <- CreateTableOne(vars = desfechos, strata = "GRUPO", data = dados)
tab2 <- print(tab2.raw, exact = TRUE)
