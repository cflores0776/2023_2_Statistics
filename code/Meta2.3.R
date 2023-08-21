# Ejercicio 1 Binomial

# Cargar la librería necesaria para calcular distribuciones binomiales
library(stats)
library(ggplot2)

# Definir los parámetros de la distribución binomial
num_ensayos <- 100     # Número total de productos fabricados
prob_exito <- 0.2      # Probabilidad de éxito en la venta (porcentaje de éxito)

# Calcular la probabilidad de al menos 5 éxitos
prob_al_menos_5_exitos <- 1 - pbinom(4, num_ensayos, prob_exito)

# Imprimir el resultado
print(prob_al_menos_5_exitos)

# Crear un gráfico de la distribución binomial
ggplot(data.frame(num_exitos, probabilidades), aes(num_exitos, probabilidades)) +
  geom_bar(stat = "identity", fill = "skyblue", width = 0.5) +
  labs(title = "Distribución de Probabilidad Binomial",
       x = "Número de Éxitos",
       y = "Probabilidad") +
  theme_minimal()

# Ejercicio 2 Binomial

# Cargar la librería necesaria para calcular distribuciones binomiales
library(stats)

# Definir los parámetros de la distribución binomial
num_ensayos <- 50      # Número total de productos defectuosos enviados para reparación
prob_exito <- 0.7      # Probabilidad de éxito en la reparación (porcentaje de éxito)

# Calcular la probabilidad de exactamente 10 éxitos
prob_exactamente_10_exitos <- dbinom(10, num_ensayos, prob_exito)

# Imprimir el resultado
print(prob_exactamente_10_exitos)


# Ejercicio 3 Poisson
# Cargar la librería necesaria para generar gráficos
library(ggplot2)

# Promedio de reservas durante el almuerzo
promedio_reservas <- 5

# Número de reservas para el que queremos calcular la probabilidad
numero_reservas <- 4

# Calcular la probabilidad utilizando la distribución de Poisson
probabilidad <- dpois(numero_reservas, lambda = promedio_reservas)

# Imprimir la probabilidad
cat("La probabilidad de recibir", numero_reservas, "reservas durante el almuerzo es:", probabilidad, "\n")

# Generar un gráfico de la distribución de Poisson
x <- 0:15  # Número de reservas
probabilidades <- dpois(x, lambda = promedio_reservas)

# Crear un gráfico de barras
ggplot(data.frame(x, probabilidades), aes(x, probabilidades)) +
  geom_bar(stat = "identity", fill = "skyblue", width = 0.5) +
  labs(title = "Distribución de Poisson para Reservas de Almuerzo",
       x = "Número de Reservas",
       y = "Probabilidad") +
  theme_minimal()
