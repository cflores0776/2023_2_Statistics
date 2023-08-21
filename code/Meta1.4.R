install.packages("readxl")
install.packages("ggplot2")

library(readxl)
library(ggplot2)

VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")
warnings()
#View(VtasTot)

# Suponiendo que VtasTot es el nombre de tu dataframe
# y UnitCost es la columna de la que deseas obtener el rango

# Calcular el rango
rango <- max(VtasTot$UnitCost) - min(VtasTot$UnitCost)

# Imprimir el resultado
print(paste("Rango:", rango))

# Calcular la varianza
varianza <- var(VtasTot$UnitCost)

# Imprimir el resultado
print(paste("Varianza:", varianza))

# Calcular la desviación estándar
desviacion_estandar <- sd(VtasTot$UnitCost)

# Imprimir el resultado
print(paste("Desviación Estándar:", desviacion_estandar))

# Suponiendo que VtasTot es el nombre de tu dataframe
# y UnitCost es la columna de la que deseas calcular la varianza

# Calcular la media
media <- mean(VtasTot$UnitCost, na.rm = TRUE)

# Restar la media a cada valor y elevar al cuadrado
diferencias_cuadradas <- (VtasTot$UnitCost - media)^2

# Calcular la varianza manual
varianza_manual <- sum(diferencias_cuadradas, na.rm = TRUE) / length(VtasTot$UnitCost)

# Imprimir el resultado
print(paste("Varianza calculada manualmente:", varianza_manual))


# Desviacián estándar manual
# Suponiendo que VtasTot es el nombre de tu dataframe
# y UnitCost es la columna de la que deseas calcular la desviación estándar

# Calcular la media
media <- mean(VtasTot$UnitCost, na.rm = TRUE)

# Restar la media a cada valor y elevar al cuadrado
diferencias_cuadradas <- (VtasTot$UnitCost - media)^2

# Calcular la varianza
varianza_manual <- sum(diferencias_cuadradas, na.rm = TRUE) / length(VtasTot$UnitCost)

# Calcular la desviación estándar (raíz cuadrada de la varianza)
desviacion_estandar_manual <- sqrt(varianza_manual)

# Imprimir el resultado
print(paste("Desviación Estándar calculada manualmente:", desviacion_estandar_manual))
