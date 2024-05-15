import matplotlib.pyplot as plt
import importlib.util


# Datos de errores del sistema de la tienda de ropa
errores = [1, 2, 1, 1, 3, 2, 2, 1, 3, 4, 2, 1, 2, 3, 4, 4, 5, 5, 5,
           4, 3, 2, 1, 1, 2, 3, 4, 5, 5, 4]

# Crear el histograma
plt.hist(errores, bins=range(min(errores), max(errores) + 1), alpha=0.9,
         color='#69b3a2', edgecolor='#e9ecef')
plt.title('Histograma de Distribución de Errores del Sistema de la Tienda de Disfraces')
plt.xlabel('Errores')
plt.ylabel('Frecuencia')
plt.grid(axis='y', alpha=0.75)
plt.show()
