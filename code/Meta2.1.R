install.packages("readxl")
install.packages("ggplot2")

library(readxl)
library(ggplot2)

VtasTot <- read_excel("data/VentasTotalEstadística.xls")
warnings()
#View(VtasTot)

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

library(writexl)
# Exportar los resultados a Excel
write_xlsx(tabla_frecuencias, "tabla_frecuencias.xlsx")
