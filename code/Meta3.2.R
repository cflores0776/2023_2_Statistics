library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")
View(VtasTot)

# Cargar la librería necesaria para trabajar con dataframes
library(dplyr)

# Definir el tamaño de la muestra que deseas
tamano_muestra <- 100

# Realizar el muestreo aleatorio simple
muestra <- VtasTot %>% sample_n(size = tamano_muestra, replace = FALSE)

# Realizar un análisis exploratorio en la muestra
summary(muestra$UnitCost)
summary(muestra$TotalCost)
summary(muestra$UnitPrice)
summary(muestra$TotalPrice)

# Crear histogramas de las variables en la muestra
hist(muestra$UnitCost, main = "Histograma de UnitCost en la Muestra")
hist(muestra$TotalCost, main = "Histograma de TotalCost en la Muestra")
hist(muestra$UnitPrice, main = "Histograma de UnitPrice en la Muestra")
hist(muestra$TotalPrice, main = "Histograma de TotalPrice en la Muestra")
