# install.packages("asht")
library(asht)

df = read.csv("data\\mediaTodasTabelas.csv")

# Estatistica Tabela 4, seleciona colunas de 'of' do CPLEX e CS
df_TAB4 = df[1:12,c(4,8)]

w_TAB4 = wsrTest(df_TAB4[,1], df_TAB4[,2] , conf.level = 0.95, 
   mu = 0, alternative = "two.sided",
   digits = NULL, tieDigits=8)
w_TAB4

# Estatistica Tabela 5, seleciona colunas de 'of' do CPLEX e CS
df_TAB5 = df[13:24,c(4,8)]

w_TAB5 = wsrTest(df_TAB5[,1], df_TAB5[,2] , conf.level = 0.95, 
   mu = 0, alternative = "two.sided",
   digits = NULL, tieDigits=8)
w_TAB5

# Estatistica Tabela 6, seleciona colunas de 'of' do CPLEX e CS
df_TAB6 = df[25:36,c(4,8)]

w_TAB6 = wsrTest(df_TAB6[,1], df_TAB6[,2] , conf.level = 0.95, 
   mu = 0, alternative = "two.sided",
   digits = NULL, tieDigits=8)
w_TAB6

# Estatistica Tabela 6, seleciona colunas de 'of' do CPLEX e CS
df_TAB7 = df[37:48,c(4,8)]

w_TAB7 = wsrTest(df_TAB7[,1], df_TAB7[,2] , conf.level = 0.95, 
   mu = 0, alternative = "two.sided",
   digits = NULL, tieDigits=8)
w_TAB7