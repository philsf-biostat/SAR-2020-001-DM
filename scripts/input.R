library(readxl)
library(data.table)

dados <- data.table(read_excel("dataset/basedados_DM_2020.xlsx"))

# novas variáveis ---------------------------------------------------------

# EVD = diferença entre EVD pós e pré
dados$EVD <- dados$`EVD PÓS` - dados$`EVD PRÉ`

# Lado acometido é o lado dominante?
dados[, DOMINANTE := as.character(`LADO ACOMETIDO` == `LADO DOMINANTE`)]
dados[DOMINANTE == TRUE, DOMINANTE := "SIM"]
dados[DOMINANTE == FALSE, DOMINANTE := "NÃO"]

# data cleaning -----------------------------------------------------------

# colunas numéricas e categóricas
num.vars <- c("EVD PRÉ", "EVD PÓS", "IDADE", "EVD", "TEMPO ARTROSE", "SATISFAÇÃO")
cat.vars <- setdiff(names(dados), num.vars)

# cols categóricas como factor
dados[, c(cat.vars) := lapply(.SD, factor), .SDcols = cat.vars]

# grupos de variáveis -----------------------------------------------------

covars <- c("IDADE", "SEXO", "DOMINANTE", "HAS", "DM", "TABAGISMO", "HT", "IVC")
desfechos <- c("EVD", "SATISFAÇÃO", "RETORNO", "ARTROSE", "TEMPO ARTROSE")

# obsoleto ----------------------------------------------------------------

# # RETORNO como booleana
# dados$RETORNO <- dados$RETORNO == "SIM"
# 
# # ARTROSE como booleana
# dados$ARTROSE <- dados$ARTROSE == "SIM"
# 
# # COMORBIDADES como booleana
# dados$HAS <- dados$HAS == "HAS"
# dados[is.na(HAS), HAS := FALSE]
# dados$DM <- dados$DM == "DM"
# dados[is.na(DM), DM := FALSE]
# dados$TABAGISMO <- dados$TABAGISMO == "TABAGISMO"
# dados[is.na(TABAGISMO), TABAGISMO := FALSE]
# dados$HT <- dados$HT == "HT"
# dados[is.na(HT), HT := FALSE]
# dados$IVC <- dados$IVC == "IVC"
# dados[is.na(IVC), IVC := FALSE]

