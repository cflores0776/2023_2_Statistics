library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")
View(VtasTot)

# Cargar la librería necesaria
library(dplyr)

# Datos
desviacion_poblacional <- sd(VtasTot$UnitCost)  # Desviación estándar poblacional estimada
nivel_confianza <- 0.95  # Nivel de confianza deseado
margen_error <- 5  # Margen de error máximo deseado

# Calcular el tamaño de muestra necesario para estimar la media con el margen de error y nivel de confianza
tamano_muestra <- ceiling((qnorm(1 - (1 - nivel_confianza)/2) * desviacion_poblacional / margen_error)^2)

# Imprimir el tamaño de muestra calculado
cat("El tamaño de muestra necesario es:", tamano_muestra, "\n")
