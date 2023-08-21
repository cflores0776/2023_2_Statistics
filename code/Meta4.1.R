library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")

# Cargar librerías necesarias
library(dplyr)
library(ggplot2)

# Explorar los datos
summary(VtasTot)

# Calcular coeficientes de correlación
cor_unitcost_totalcost <- cor(VtasTot$UnitCost, VtasTot$TotalCost)
cor_unitprice_totalprice <- cor(VtasTot$UnitPrice, VtasTot$TotalPrice)

# Imprimir resultados
cat("Coeficiente de correlación entre UnitCost y TotalCost:", cor_unitcost_totalcost, "\n")
cat("Coeficiente de correlación entre UnitPrice y TotalPrice:", cor_unitprice_totalprice, "\n")


