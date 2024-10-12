install.packages("arules")
library(arules)

data <- read.csv('PERSONA_BDP.csv', sep=",", nrows=1000000)

# Estas son columnas innecesarias
data <- data[, !(names(data) %in% c("PEA", "POCUPA", "PEI"))]

# dejamos solo valores unicos
data[] <- lapply(data, function(x) if(is.numeric(x)) x else as.factor(x))

# Filtra columnas con menos de 2 valores únicos
data <- data[, sapply(data, function(x) length(unique(x)) > 1)]

# Aplica apriori
reglas <- apriori(data, parameter=list(support=0.2, confidence=0.5))

inspect(reglas[0:200])
inspect(reglas[200:400])
