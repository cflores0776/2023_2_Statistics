### Inicia intervalos de confianza para la media

library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")
View(VtasTot)

# Cargar la librería necesaria para calcular intervalos de confianza
library(stats)

# Definir el nivel de confianza (95% y 99%)
nivel_confianza_95 <- 0.95
nivel_confianza_99 <- 0.99

# Datos del dataframe VtasTot (suponiendo que tienes las columnas UnitCost, TotalCost, UnitPrice y TotalPrice)
datos <- VtasTot$UnitCost  # Cambia al nombre de la columna que desees analizar

# Calcular la media y la desviación estándar de los datos
media <- mean(datos)
desviacion_estandar <- sd(datos)

# Calcular el tamaño de la muestra
tamanio_muestra <- length(datos)

# Calcular los valores críticos de la distribución t de Student
valor_critico_95 <- qt((1 - nivel_confianza_95) / 2, df = tamanio_muestra - 1)
valor_critico_99 <- qt((1 - nivel_confianza_99) / 2, df = tamanio_muestra - 1)

# Calcular los intervalos de confianza
intervalo_confianza_95 <- c(media - valor_critico_95 * (desviacion_estandar / sqrt(tamanio_muestra)),
                            media + valor_critico_95 * (desviacion_estandar / sqrt(tamanio_muestra)))

intervalo_confianza_99 <- c(media - valor_critico_99 * (desviacion_estandar / sqrt(tamanio_muestra)),
                            media + valor_critico_99 * (desviacion_estandar / sqrt(tamanio_muestra)))

# Imprimir los resultados
cat("Intervalo de Confianza al 95%:", intervalo_confianza_95, "\n")
cat("Intervalo de Confianza al 99%:", intervalo_confianza_99, "\n")

#### Termina intervalos de confianza de la media

### Inicia intervalos de confianza para la desviación estándar
# Cargar la librería necesaria para calcular intervalos de confianza
library(stats)

# Definir el nivel de confianza (95% y 99%)
nivel_confianza_95 <- 0.95
nivel_confianza_99 <- 0.99

# Datos del dataframe VtasTot (suponiendo que tienes las columnas UnitCost, TotalCost, UnitPrice y TotalPrice)
datos_unit_cost <- VtasTot$UnitCost
datos_total_cost <- VtasTot$TotalCost
datos_unit_price <- VtasTot$UnitPrice
datos_total_price <- VtasTot$TotalPrice

# Calcular la desviación estándar de los datos
desviacion_estandar_unit_cost <- sd(datos_unit_cost)
desviacion_estandar_total_cost <- sd(datos_total_cost)
desviacion_estandar_unit_price <- sd(datos_unit_price)
desviacion_estandar_total_price <- sd(datos_total_price)

# Calcular el tamaño de la muestra
tamanio_muestra <- length(datos_unit_cost)

# Calcular los valores críticos de la distribución chi-cuadrada
valor_critico_95 <- qchisq((1 + nivel_confianza_95) / 2, df = tamanio_muestra - 1)
valor_critico_99 <- qchisq((1 + nivel_confianza_99) / 2, df = tamanio_muestra - 1)

# Calcular los intervalos de confianza
intervalo_confianza_95 <- c(sqrt((tamanio_muestra - 1) * desviacion_estandar_unit_cost^2 / valor_critico_95),
                            sqrt((tamanio_muestra + 1) * desviacion_estandar_unit_cost^2 / valor_critico_95),
                            sqrt((tamanio_muestra - 1) * desviacion_estandar_total_cost^2 / valor_critico_95),
                            sqrt((tamanio_muestra + 1) * desviacion_estandar_total_cost^2 / valor_critico_95),
                            sqrt((tamanio_muestra - 1) * desviacion_estandar_unit_price^2 / valor_critico_95),
                            sqrt((tamanio_muestra + 1) * desviacion_estandar_unit_price^2 / valor_critico_95),
                            sqrt((tamanio_muestra - 1) * desviacion_estandar_total_price^2 / valor_critico_95),
                            sqrt((tamanio_muestra + 1) * desviacion_estandar_total_price^2 / valor_critico_95))

intervalo_confianza_99 <- c(sqrt((tamanio_muestra - 1) * desviacion_estandar_unit_cost^2 / valor_critico_99),
                            sqrt((tamanio_muestra - 1) * desviacion_estandar_total_cost^2 / valor_critico_99),
                            sqrt((tamanio_muestra - 1) * desviacion_estandar_unit_price^2 / valor_critico_99),
                            sqrt((tamanio_muestra - 1) * desviacion_estandar_total_price^2 / valor_critico_99))

# Imprimir los resultados
cat("Intervalo de Confianza al 95% para Desviación Estándar:\n", intervalo_confianza_95, "\n\n")
cat("Intervalo de Confianza al 99% para Desviación Estándar:\n", intervalo_confianza_99, "\n")

### Termina intervalos de confianza para la desviación estándar
