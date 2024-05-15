# Cargamos el paquete necesario
library(ggplot2)

# Creamos un dataframe con los datos
datos <- data.frame(
  Categoria = c("Gestión de inventario", "Facturación y ventas", 
                "Control de usuarios y permisos", "Generación de informes", "Integración con sistemas de pago"),
  Prioridad = c("Alto", "Alto", "Medio", "Medio", "Bajo")
)

# Convertimos la prioridad a un factor ordenado
datos$Prioridad <- factor(datos$Prioridad, levels = c("Bajo", "Medio", "Alto"), ordered = TRUE)

# Creamos el gráfico de Pareto
pareto_plot <- ggplot(datos, aes(x = reorder(Categoria, -as.numeric(Prioridad)), y = as.numeric(Prioridad))) +
  geom_bar(stat = "identity", aes(fill = Prioridad)) +
  labs(x = "Categoría", y = "Prioridad") +
  ggtitle("Diagrama de Pareto") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Imprimimos el gráfico
print(pareto_plot)
