install.packages("readxl")
install.packages("ggplot2")

library(readxl)
library(ggplot2)

VtasTot <- read_excel("data/VentasTotalEstadística.xls")
View(VtasTot)


#Obtener las medidas de posición Cuartil 1, Cuartil 2 y Cuartil 3
# Suponiendo que VtasTot es el nombre de tu dataframe
# y UnitCost es la columna de la que quieres obtener los cuartiles

# Obtener los cuartiles 1, 2 (mediana) y 3 de la variable UnitCost
q1 <- quantile(VtasTot$UnitCost, 0.25)
q2 <- quantile(VtasTot$UnitCost, 0.5) # La mediana es el cuartil 2
q3 <- quantile(VtasTot$UnitCost, 0.75)

# Imprimir los resultados
cat("Cuartil 1:", q1, "\n")
cat("Mediana (Cuartil 2):", q2, "\n")
cat("Cuartil 3:", q3, "\n")


# Suponiendo que VtasTot es el nombre de tu dataframe

# Crear la gráfica de bigotes para las columnas UnitCost, TotalCost, UnitPrice y TotalPrice
ggplot(VtasTot, aes(y = UnitCost, x = "UnitCost")) +
  geom_boxplot() +
  labs(title = "Gráfico de bigotes UnitCost",
       y = "Valor",
       x = "Columna") +
  theme_minimal()


#Eliminando Valores atipicos
# Suponiendo que VtasTot es el nombre de tu dataframe

# Crear la gráfica de bigotes para la columna UnitCost sin mostrar valores atípicos
ggplot(VtasTot, aes(y = UnitCost, x = "UnitCost")) +
  geom_boxplot(outlier.shape = NA) +  # Oculta los valores atípicos (NA indica que no se mostrarán)
  labs(title = "Gráfico de bigotes",
       y = "Valor",
       x = "Columna") +
  theme_minimal()



# Crear la gráfica de bigotes para la columna UnitCost sin mostrar valores atípicos y mejorando la escala de visualización
ggplot(VtasTot, aes(y = UnitCost, x = "UnitCost")) +
  geom_boxplot(outlier.shape = NA) +  # Oculta los valores atípicos (NA indica que no se mostrarán)
  labs(title = "Gráfico de bigotes",
       y = "Valor",
       x = "Columna") +
  theme_minimal() +
  coord_cartesian(ylim = c(0, quantile(VtasTot$UnitCost, 0.95)))  # Establecer límite superior en el eje y










