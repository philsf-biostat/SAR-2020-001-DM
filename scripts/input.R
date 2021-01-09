library(readxl)
library(data.table)

dados <- data.table(read_excel("dataset/basedados_DM_2020.xlsx"))

# novas variáveis ---------------------------------------------------------

# EVD = diferença entre EVD pós e pré
dados$EVD <- dados$`EVD PÓS` - dados$`EVD PRÉ`

# Lado acometido é o lado dominante?
dados[, DOMINANTE := `LADO ACOMETIDO` == `LADO DOMINANTE`]
