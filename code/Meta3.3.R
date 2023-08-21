library(readxl)
VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")
View(VtasTot)
# Cargar las librerías necesarias
library(dplyr)
library(ggplot2)

# Definir el tamaño de muestra y el número de muestras a generar
tamano_muestra <- 30
num_muestras <- 1000

# Crear una función para calcular la media de una muestra
calcular_media_muestra <- function(muestra) {
  mean(muestra)
}

# Crear un dataframe para almacenar las medias de las muestras
resultados <- data.frame(Muestra = 1:num_muestras,
                         Media = numeric(num_muestras))

# Generar múltiples muestras aleatorias y calcular sus medias
for (i in 1:num_muestras) {
  muestra <- sample(VtasTot$UnitCost, size = tamano_muestra, replace = FALSE)
  resultados$Media[i] <- calcular_media_muestra(muestra)
}

# Crear un histograma de las medias de las muestras
ggplot(resultados, aes(x = Media)) +
  geom_histogram(binwidth = 10, color = "black", fill = "blue", alpha = 0.7) +
  labs(title = "Distribución de Medias de Muestras",
       x = "Media de Muestra",
       y = "Frecuencia")

mean(VtasTot$UnitCost)
