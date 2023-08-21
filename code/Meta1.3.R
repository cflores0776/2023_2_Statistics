install.packages("readxl")
install.packages("ggplot2")

library(readxl)
library(ggplot2)

VtasTot <- read_excel("Data/ProcessData/VentasTotalEstadística.xls")
warnings()
#View(VtasTot)

# Suponiendo que VtasTot es el nombre de tu dataframe
# y UnitCost es la columna de la que deseas obtener la distribución de frecuencia

# Obtener la tabla de frecuencia
frecuencias <- table(VtasTot$UnitCost)

# Imprimir la tabla de frecuencia
print(frecuencias)

# Crear un gráfico de barras para visualizar la distribución de frecuencia
barplot(frecuencias, main = "Distribución de Frecuencia de UnitCost", xlab = "UnitCost", ylab = "Frecuencia")

# Con un número determinado de clases
# Suponiendo que VtasTot es el nombre de tu dataframe
# y UnitCost es la columna de la que deseas obtener la distribución de frecuencia

# Definir el número de clases que deseas
num_clases <- 10

# Crear la distribución de frecuencia con el número de clases especificado
frecuencias <- table(cut(VtasTot$UnitCost, breaks = num_clases))

# Imprimir la tabla de frecuencia
print(frecuencias)

# Crear un gráfico de barras para visualizar la distribución de frecuencia
barplot(frecuencias, main = "Distribución de Frecuencia de UnitCost", xlab = "Intervalos", ylab = "Frecuencia")

# Mejorar la visualización de la tabla
# Convertir la tabla de frecuencias en un data frame
tabla_frecuencias <- as.data.frame(frecuencias)

# Imprimir el data frame con la tabla de frecuencias
print(tabla_frecuencias)

# Frecuencias absolutas y relativas
# Suponiendo que VtasTot es el nombre de tu dataframe
# y UnitCost es la columna de la que deseas obtener la distribución de frecuencia

# Definir el número de clases que deseas
num_clases <- 10

# Crear la distribución de frecuencia con el número de clases especificado
frecuencias_absolutas <- table(cut(VtasTot$UnitCost, breaks = num_clases))

# Calcular la frecuencia relativa dividiendo cada frecuencia absoluta por el total de observaciones
total_observaciones <- length(VtasTot$UnitCost)
frecuencias_relativas <- frecuencias_absolutas / total_observaciones

# Crear un data frame con la tabla de distribución de frecuencias
tabla_frecuencias <- data.frame(Intervalo = names(frecuencias_absolutas),
                                Frecuencia_Absoluta = frecuencias_absolutas,
                                Frecuencia_Relativa = frecuencias_relativas)

# Imprimir la tabla de frecuencias
print(tabla_frecuencias)




