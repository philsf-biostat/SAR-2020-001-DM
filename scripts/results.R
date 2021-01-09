source('scripts/input.R', encoding = 'UTF-8')

library(tableone)

covars <- c("IDADE", "SEXO", "DOMINANTE", "TEMPO ARTROSE", "HAS", "DM", "TABAGISMO", "HT", "IVC")

tab1 <- CreateTableOne(vars = covars, strata = "GRUPO", data = dados)
print(tab1, exact = TRUE)
