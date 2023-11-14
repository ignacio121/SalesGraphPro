# salesgraphpro


## Equipo del proyecto
- Brayan Flores (Encargado del diseño)
- Diego Moya (Desarrollador Principal)
- Ignacio Muñoz (Arquitecto de software)

## Caso De Uso
    1.- Perfil del Usuario: Los usuarios tienen acceso a su perfil personal. Pueden ver información como nombre, correo electrónico, ubicación, y otros detalles relevantes.
    2.- Visualización de Gráficos:Los usuarios pueden acceder a la sección de gráficos, donde encuentran dos tipos de visualizaciones principales: gráfico de torta y gráfico de líneas.
    3.- Gráfico de Torta: Al seleccionar la opción del gráfico de torta, los usuarios pueden visualizar datos relacionados con la cantidad de ventas realizadas en distintas regiones.
    4.- Gráfico de Líneas: La opción de gráfico de líneas muestra el historial de ventas realizadas en distintas regiones en un año.
    5.- Interacción con Gráficos: Los usuarios pueden interactuar con los gráficos tocando elementos específicos para obtener detalles adicionales. Por ejemplo, tocar una porción del gráfico de torta podría mostrar la proporción ventas .
    6.- Análisis de Datos: Con la capacidad de ver y analizar gráficos, los usuarios pueden tomar decisiones informadas sobre su comportamiento financiero. Esto facilita la identificación de áreas de oportunidad para ahorros o ajustes en el gasto.


## Diseño

El diseño del proyecto consiste en tres pestañas:
-Gráficos: La pestaña graficos contendrá los graficos correspondientes.
-Inicio: Contendrá la información de la aplicación.
-Perfil: Contendrá la información del perfil del usuario.

El prototipo del proyecto fue hecho en las primeras reuniones en la plataforma de lucidChart. 

Podemos verlo en el siguiente LINK

- [LucidChart SalesGraphPro](https://lucid.app/lucidchart/9c096983-115a-4f63-ab6e-4244a90350cd/edit?viewport_loc=124%2C65%2C2994%2C1513%2C0_0&invitationId=inv_a2d4f93e-b6ec-4a02-a4fb-4d985f7d817c)

![LucidChart-imagen](https://github.com/ignacio121/SalesGraphPro/blob/graphs/salesgraphpro/assets/lucidchart.png)


## implementación



## Arquitectura

La arquitectura propuesta para el proyecto se basa en una estructura por capas que facilita la organización y mantenimiento del código. Se utilizará Flutter como lenguaje de desarrollo y Syncfusion Flutter Charts para la creación de gráficos. El proyecto estará compuesto por cuatro archivos principales, cada uno dedicado a una parte específica de la aplicación.

### Vista Principal ("firstpage.dart"):
- Contendrá la estructura básica de la aplicación.
- Incluirá la navegación entre las distintas pestañas (gráficos, inicio y perfil) mediante la utilización de un BottomNavigationBar.
- Se encargará de cargar y mostrar la primera página de la aplicación.

### Archivo de la Página de Gráficos ("graphs.dart"):
- Este archivo se centrará en la representación de gráficos utilizando Syncfusion Flutter Charts.
- Incluirá botones para navegar entre los diferentes tipos de gráficos disponibles.

### Archivo de la Página de Inicio ("home.dart"):
- La página de inicio proporcionará información general sobre la aplicación.
- Puede contener detalles sobre su propósito, características principales y cualquier otra información relevante.
- Incluirá elementos visuales como textos descriptivos e imágenes para mejorar la presentación.

### Archivo de la Página de Perfil (profile.dart):
- La página de perfil mostrará información específica del usuario.
- Incluirá detalles como el nombre del usuario, foto de perfil y cualquier otra información personal relevante.

### Diagrama de Arquitectura:

A continuación, se presenta un diagrama de arquitectura de alto nivel que representa la relación entre los archivos mencionados:

![Diagrama-arquitectura]((https://github.com/ignacio121/SalesGraphPro/blob/graphs/salesgraphpro/assets/diagrama.png))

Este enfoque por capas proporciona una estructura clara y modular que facilita la expansión y el mantenimiento del código a medida que el proyecto evoluciona. Además, la división en archivos dedicados a funciones específicas mejora la legibilidad y facilita la colaboración en el desarrollo del proyecto.
