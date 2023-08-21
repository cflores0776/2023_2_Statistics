library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")

# Cargar la librería necesaria para trabajar con distribuciones
library(stats)

# Extraer la columna de precios unitarios del DataFrame
precios_unitarios <- VtasTot$UnitPrice

# Calcular la media y desviación estándar de los precios unitarios
media_precios <- mean(precios_unitarios)
desviacion_estandar_precios <- sd(precios_unitarios)

# Definir el rango de precios para el cual se calculará la probabilidad
rango_inicio <- 50
rango_fin <- 100

# Calcular la probabilidad utilizando la función pnorm
probabilidad_rango <- pnorm(rango_fin, mean = media_precios, sd = desviacion_estandar_precios) -
  pnorm(rango_inicio, mean = media_precios, sd = desviacion_estandar_precios)

# Imprimir la probabilidad calculada
cat("La probabilidad de que un precio unitario esté entre", rango_inicio, "y", rango_fin, "es:", probabilidad_rango)
