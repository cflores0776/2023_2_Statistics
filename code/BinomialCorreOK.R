# Cargar la librería necesaria para calcular distribuciones binomiales
library(stats)
library(ggplot2)  # Agregamos la librería para generar gráficos

# Definir los parámetros de la distribución binomial
num_ensayos <- 100     # Número total de productos fabricados
prob_exito <- 0.2      # Probabilidad de éxito en la venta (porcentaje de éxito)

# Calcular la probabilidad de al menos 5 éxitos
prob_al_menos_5_exitos <- 1 - pbinom(4, num_ensayos, prob_exito)

# Imprimir el resultado
cat("La probabilidad de al menos 5 éxitos en", num_ensayos, "ensayos es:", prob_al_menos_5_exitos, "\n")

# Generar un vector de números de éxitos (desde 0 hasta num_ensayos)
num_exitos <- 0:num_ensayos

# Calcular las probabilidades para cada número de éxitos utilizando la distribución binomial
probabilidades <- dbinom(num_exitos, num_ensayos, prob_exito)

# Crear un gráfico de la distribución binomial
ggplot(data.frame(num_exitos, probabilidades), aes(num_exitos, probabilidades)) +
  geom_bar(stat = "identity", fill = "skyblue", width = 0.5) +
  labs(title = "Distribución de Probabilidad Binomial",
       x = "Número de Éxitos",
       y = "Probabilidad") +
  theme_minimal()
