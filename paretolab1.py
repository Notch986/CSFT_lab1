import matplotlib.pyplot as plt
import pandas as pd
import importlib.util


# Datos para el diagrama de Pareto
categorias = ["Gestión de inventario", "Facturación y ventas", 
              "Control de usuarios y permisos", "Generación de informes", "Integración con sistemas de pago"]
prioridades = ["Alto", "Alto", "Medio", "Medio", "Bajo"]

# Crear el dataframe
datos = pd.DataFrame({"Categoria": categorias, "Prioridad": prioridades})

# Ordenar las prioridades de forma descendente
prioridades_ordenadas = datos["Prioridad"].value_counts().index.tolist()
datos["Prioridad"] = pd.Categorical(datos["Prioridad"], categories=prioridades_ordenadas, ordered=True)

# Crear el gráfico de Pareto
pareto_plot = datos.groupby("Categoria")["Prioridad"].count().sort_values(ascending=False).cumsum().plot(kind='bar', color='blue')
plt.ylabel('Prioridad')
plt.title('Diagrama de Pareto')
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.show()
