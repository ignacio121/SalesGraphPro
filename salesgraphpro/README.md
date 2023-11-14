# salesgraphpro


## Equipo del proyecto
- Brayan Flores (Encargado del diseño)
- Diego Moya (Desarrollador Principal)
- Ignacio Muñoz (Arquitecto de software)

## Caso De Uso

- Perfil del Usuario: Los usuarios tienen acceso a su perfil personal. Pueden ver información como nombre, correo electrónico, ubicación, y otros detalles relevantes.
- Visualización de Gráficos:Los usuarios pueden acceder a la sección de gráficos, donde encuentran dos tipos de visualizaciones principales: gráfico de torta y gráfico de líneas.
- Gráfico de Torta: Al seleccionar la opción del gráfico de torta, los usuarios pueden visualizar datos relacionados con la cantidad de ventas realizadas en distintas regiones.
- Gráfico de Líneas: La opción de gráfico de líneas muestra el historial de ventas realizadas en distintas regiones en un año.
- Interacción con Gráficos: Los usuarios pueden interactuar con los gráficos tocando elementos específicos para obtener detalles adicionales. Por ejemplo, tocar una porción del gráfico de torta podría mostrar la proporción ventas .
- Análisis de Datos: Con la capacidad de ver y analizar gráficos, los usuarios pueden tomar decisiones informadas sobre su comportamiento financiero. Esto facilita la identificación de áreas de oportunidad para ahorros o ajustes en el gasto.

## Diseño

El diseño del proyecto se fundamenta en consideraciones clave para representar el caso de uso y desarrollar una interfaz efectiva y atractiva. A continuación, se detallan las decisiones de diseño y se incorporan maquetas que describen la estructura visual de cada una de las tres pestañas principales:

- Gráficos: Esta pestaña albergará diversos gráficos correspondientes a la representación visual de datos específicos.

- Inicio: La pestaña de inicio se dedicará a proporcionar información clave sobre la aplicación, detallando su propósito, características principales y otros aspectos relevantes.

- Perfil: La pestaña de perfil estará destinada a exhibir información personalizada del usuario, incluyendo detalles como el nombre, foto de perfil y cualquier otra información relacionada.

El desarrollo del prototipo del proyecto se llevó a cabo durante las primeras reuniones utilizando la plataforma Lucidchart. Para visualizar el prototipo y obtener una visión más detallada del diseño, se puede acceder al siguiente [LINK](https://lucid.app/lucidchart/9c096983-115a-4f63-ab6e-4244a90350cd/edit?viewport_loc=124%2C65%2C2994%2C1513%2C0_0&invitationId=inv_a2d4f93e-b6ec-4a02-a4fb-4d985f7d817c). Este prototipo inicial proporciona una representación visual de la estructura y la interfaz general del proyecto, sirviendo como base para futuras iteraciones y desarrollos.

![LucidChart-imagen](https://github.com/ignacio121/SalesGraphPro/blob/graphs/salesgraphpro/assets/lucidchart.png)


## implementación

Para la implementacion de nuestro caso, se hace la utilzacion de syncfusion_flutter_charts la cual encontramos que para la realizacion de la tarea, nos brindaba mas opciones y libertad a la hora de desarrollar. Hacemos la utilizacion de **PieSeries** para representar un grafico de torta y **Line series** para representar un grafico de lineas multiples. Estas funcionalidades estan incluidas dentro de la pagina **graphs.dart**, la cual forma parte de un conjunto de 3 paginas, incluiyendo esta. Para poder navegar dentro de la pagina lo primero que se hace uso es la llamada de la pagina **firstpage.dart** la cual es la encargada de mostrar la pagina principal y la que cuenta con las funciones para navegar dentro de nuestra aplicacion.


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

![Diagrama-arquitectura](https://github.com/ignacio121/SalesGraphPro/blob/graphs/salesgraphpro/assets/diagrama.png)

Este enfoque por capas proporciona una estructura clara y modular que facilita la expansión y el mantenimiento del código a medida que el proyecto evoluciona. Además, la división en archivos dedicados a funciones específicas mejora la legibilidad y facilita la colaboración en el desarrollo del proyecto.
