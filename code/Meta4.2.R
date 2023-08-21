library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")


# Cargar las librerías necesarias
library(dplyr)
library(ggplot2)

# Supongamos que VtasTot es el nombre de tu DataFrame

# Calcular el coeficiente de determinación entre los precios (UnitPrice) y los costos (UnitCost)
correlation <- cor(VtasTot$UnitPrice, VtasTot$UnitCost)
r_squared <- correlation^2

# Imprimir el resultado
cat("Coeficiente de determinación entre UnitPrice y UnitCost:", r_squared, "\n")

# Realizar un gráfico de dispersión para visualizar la relación
ggplot(VtasTot, aes(x = UnitCost, y = UnitPrice)) +
  geom_point() +
  labs(title = "Relación entre Costos y Precios",
       x = "Costo Unitario",
       y = "Precio Unitario")
