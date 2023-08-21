install.packages("readxl")
library(readxl)
VtasTot <- read_excel("data/VentasTotalEstadística.xls")
warnings() #MarcaWarnings, no son errores
View(VtasTot)

#OBTENER MEDIDAS DE TENDENCIA CENTRAL
#MEDIA
# Calcular la media de las columnas específicas
mean_UnitCost <- mean(VtasTot$UnitCost)
mean_TotalCost <- mean(VtasTot$TotalCost)
mean_UnitPrice <- mean(VtasTot$UnitPrice)
mean_TotalPrice <- mean(VtasTot$TotalPrice)

# Imprimir los resultados
cat("Media de UnitCost:", mean_UnitCost, "\n")
cat("Media de TotalCost:", mean_TotalCost, "\n")
cat("Media de UnitPrice:", mean_UnitPrice, "\n")
cat("Media de TotalPrice:", mean_TotalPrice, "\n")

#MEDIANA
# Calcular la mediana de las columnas específicas
median_UnitCost <- median(VtasTot$UnitCost)
median_TotalCost <- median(VtasTot$TotalCost)
median_UnitPrice <- median(VtasTot$UnitPrice)
median_TotalPrice <- median(VtasTot$TotalPrice)

# Imprimir los resultados
cat("Mediana de UnitCost:", median_UnitCost, "\n")
cat("Mediana de TotalCost:", median_TotalCost, "\n")
cat("Mediana de UnitPrice:", median_UnitPrice, "\n")
cat("Mediana de TotalPrice:", median_TotalPrice, "\n")

#MODA
# Función para calcular la moda de un vector
get_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}

# Calcular la moda de las columnas específicas
mode_UnitCost <- get_mode(VtasTot$UnitCost)
mode_TotalCost <- get_mode(VtasTot$TotalCost)
mode_UnitPrice <- get_mode(VtasTot$UnitPrice)
mode_TotalPrice <- get_mode(VtasTot$TotalPrice)

# Imprimir los resultados
cat("Moda de UnitCost:", mode_UnitCost, "\n")
cat("Moda de TotalCost:", mode_TotalCost, "\n")
cat("Moda de UnitPrice:", mode_UnitPrice, "\n")
cat("Moda de TotalPrice:", mode_TotalPrice, "\n")

