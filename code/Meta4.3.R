library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")

# Cargar las librerías necesarias
library(ggplot2)

# Cargar el dataframe
data <- VtasTot

# Realizar un gráfico de dispersión para visualizar la relación
ggplot(data, aes(x = UnitCost, y = UnitPrice)) +
  geom_point() +
  labs(title = "Relación entre Costo Unitario y Precio Unitario",
       x = "Costo Unitario",
       y = "Precio Unitario")

# Aplicar la regresión lineal
modelo <- lm(UnitPrice ~ UnitCost, data = data)

# Imprimir los resultados del modelo
summary(modelo)

