

# Verificar si el paquete está instalado
if (!requireNamespace("qcc", quietly = TRUE)) {
  # Si no está instalado, instalarlo
  install.packages("qcc")
  # Cargar el paquete recién instalado
  library(qcc)
} else {
  # Si está instalado, cargar el paquete
  library(qcc)
}
# Crea el Diagrama Ishikawa
cause.and.effect(
  cause = list(
    Hardware = c("Procesador insuficiente", "memoria RAM limitada", "disco duro fragmentado"),
    Software = c("Sistema operativo desactualizado", "software de gestión de tienda con errores", "base de datos no optimizada"),
    Red = c("Ancho de banda insuficiente", "latencia alta", "problemas de conectividad"),
    requisitos = c("Requisitos ambiguos", "Cambios frecuentes en los requisitos","pruebas superficiales")),
  effect="Mal rendimiento del sistema")