## Introducción:

<div style="text-align: center;">
    <img src="Transito.jpg" alt="Texto alternativo" style="width:650px; height:300px;">
</div>


Nuestro ámbito a investigar es el de los siniestros viales, también conocidos como accidentes de tráfico o accidentes de tránsito. Eventos que involucran vehículos en las vías públicas y que pueden tener diversas causas, como colisiones entre automóviles, motocicletas, bicicletas o peatones, atropellos, choques con objetos fijos o caídas de vehículos. Estos incidentes pueden tener consecuencias que van desde daños materiales hasta lesiones graves o fatales para los involucrados.

El contexto en el que nos encontramos es la Ciudad Autonoma de Buenos aires donde los siniestros viales son una preocupación importante debido al alto volumen de tráfico y la densidad poblacional. Estos incidentes pueden tener un impacto significativo en la seguridad de los residentes y visitantes de la ciudad, así como en la infraestructura vial y los servicios de emergencia.

Las tasas de mortalidad relacionadas con siniestros viales suelen ser un indicador crítico de la seguridad vial en una región. Estas tasas se calculan, generalmente, como el número de muertes por cada cierto número de habitantes o por cada cierta cantidad de vehículos registrados. Reducir estas tasas es un objetivo clave para mejorar la seguridad vial y proteger la vida de las personas en la ciudad.

**El seguimiento de las estadísticas y la implementación de políticas efectivas son esenciales para abordar este problema de manera adecuada.**

Realizamos el análisis exploratorio de Datos y fuimos recolectando algunos parametros que nos fueron de utilidad.

# Resumen del EDA

* Utilizamos amplia variedad de gráficos para análizar los datos y fuimos enumerando las conclusiones respectivas a medida que avanzamos. Se puede encontrar lo mencionado en el archivo "EDA".
* Ahondado en las investigación de las variables de los DataSets Propuesto, llegamos a conclusiones separadas por ejes temáticos. Al integralos encontramos correlaciones entre variables como por ejemplo SEXO y EDAD, comparaciones de números de victimas y temporalidades y las localizaciones de los hechos. Para la etapa de visualización y KPI´s presentaremos las anotaciones de puntos críticos para darle solución a los problemas que se nos propone. 
* De nuestro EDA proponemos que un Índicado Clave de Rendimiento serán propuestas para bajar el índice de accidentes según zonas concretas de la Ciudad Autonoma de Buenos Aires para una población determinadad (varones entre 25 y 45 años).

# SQL

* Creamos una base de datos con MySQL Workbench para trabajar la combinación de tablas que utilizamos anteriormente en el EDA para facilitarnos el trabajo con la herramienta de visualización POWER BI.

# KPI'S

## Reducir en un 10% la tasa de homicidios en siniestros viales de los últimos seis meses, en CABA, en comparación con la tasa de homicidios en siniestros viales del semestre anterior.

### DASHBOARDS DE KPI redución de tasa de homicidios según semestres:

* Realizamos el calculo de la tasa de homicidios según los años y el semestre que se seleccione, luego tenemos una tarjeta de KPI que nos arroja el índice al que buscamos alcanzar, siempre a la tasa de homicidio le calculamos el 10% menos para alcanzar el objetivo deseado. Acompañan a estos índices algunas métricas que nos ayudan a orientar la solución de la baja del índice. Por un lado tenemos el gráfico de barras que contiene el flujo mensual de accidentes fatales. Luego nos pareció pertinente un calculo según género y víctima. Agregamos al final el calculo diferenciado según los semestres del año que se seleccione.

<div style="text-align: center;">
    <img src="DASHBOARD\\KPI Siniestros viales 1.jpg" alt="Texto alternativo" style="width:1000px; height:500px;">
</div>

* En el panel encontramos el calculo de los siniestros con el calculo total de todas las variables a lo largo de los años.

<div style="text-align: center;">
    <img src="DASHBOARD\\KPI Siniestros viales 2.jpg" alt="Texto alternativo" style="width:1000px; height:500px;">
</div>

* En el segundo panel encontramos el calculo dentro de la segmentación de datos de forma interactiva donde nos arroja el resultado según el año que se le indica.


<div style="text-align: center;">
    <img src="DASHBOARD\\KPI Siniestros viales 3.jpg" alt="Texto alternativo" style="width:1000px; height:500px;">
</div>

* En el tercer panel encontramos ahora filtrado según el semestre que se quiere buscar.

## Reducir en un 7% la cantidad de accidentes mortales de motociclistas en el último año, en CABA, respecto al año anterior

### DASHBOARDS DE KPI redución de accidentes mortales de motociclistas:

* Calculamos los accidentes mortales respecto a los años 2021 y 2020, calculamos el porcentaje el cual subió. Ese porcentaje nos permitirá jugar con la reducción porcentual de los accidentes teniendo en cuenta las gráficas que presentamos a prestar mayor atención para cumplir el objetivo. Esto es, el flujo de accidentes fatales según años y meses, la relación de las víctimas fatales de motociclistas de otras víctimas, los principales acusados de las vícitmas de motos, género que sabíamos por el EDA que eran mayoría masculinos y edad que sabíamos por el EDA que estaba entre los 25 y 45 años en su mayoría.

<div style="text-align: center;">
    <img src="DASHBOARD\\KPI 2 Siniestros Motos.jpg" alt="Texto alternativo" style="width:1000px; height:500px;">
</div>

## Reducir accidentes según Comunas

* Cómo anticipamos en el EDA, encontramos indicios de que las zonas nos daban un indicador clave para la resolución de un problema. El Dashboard que presentamos busca inferir cuales son esas zonas para el posterior trabajo de reducción de accidentes en esas zonas:
Comuna 1 y 4: comunas que están contiguas, la comuna 1 es conocida como "Microcentro" que tiene cierta coherencia con el análisis general dado a que "Microcentro" se caracteriza por alta frecuencia y concentración de tráfico constantemente. La comuna 4 está continua a la comuna 1 y tiene varias arterías fundamentales de la ciudad como Av. 25 de Mayo y circunda con la Zona Sur del AMBA, siendo un camino frecuentado para la entrada y salida a "Microcentro". 
Comuna 9: la zona de Parque Avellaneda, Liniers y Matadero. Liniers se conoce por ser un punto neuralgico en el funcionamiento de carreteras, conecta Autopistas, Rutas y Avenidas que conectan las 4 zonas (sur, norte, este y oeste) de la Ciudad y el Gran Buenos Aires.
Av. Gral Paz: notamos que la extensión de la avenida general paz es grande y que cuenta con bastante concurrecia, conectando varios puntos importantes de la Ciudad y alrededores.
Para ello presentamos un gráfico de barras para el calculo de víctimas por comunas, otro gráfico de barras para contrastar las víctimas fatales por  comunas y para finalizar y darle un marco comparatorio a las victimas en general con las víctimas fatales según tipo de calles que advertiamos que eran en su mayoría las avenidas lugares comunes de siniestros de tránsito.

<div style="text-align: center;">
    <img src="DASHBOARD\\KPI 3 Siniestros zonas.jpg" alt="Texto alternativo" style="width:1000px; height:500px;">
</div>


