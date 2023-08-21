# Cargar paquetes
library(dplyr)
library(ggplot2)
library(stats)

library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")

# Visualizar las primeras filas de tus datos
head(VtasTot)

# Ajustar el modelo de regresión múltiple
modelo <- lm(TotalPrice ~ UnitCost + UnitPrice, data = VtasTot)

# Ver un resumen del modelo
summary(modelo)


# Cargar las librerías necesarias
library(ggplot2)

# Crear un gráfico de dispersión de las variables UnitCost y TotalPrice
ggplot(VtasTot, aes(x = UnitCost, y = TotalPrice)) +
  geom_point() +
  labs(title = "Relación entre Costo Unitario y Ventas Totales",
       x = "Costo Unitario",
       y = "Ventas Totales") +
  theme_minimal()

# Crear un gráfico de dispersión de las variables UnitPrice y TotalPrice
ggplot(VtasTot, aes(x = UnitPrice, y = TotalPrice)) +
  geom_point() +
  labs(title = "Relación entre Precio Unitario y Ventas Totales",
       x = "Precio Unitario",
       y = "Ventas Totales") +
  theme_minimal()
