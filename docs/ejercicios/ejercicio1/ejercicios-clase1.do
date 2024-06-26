
* Agradecimientos a Nick Eubank por los ejemplos. 

*-----------*

* Ejercicio 1

*-----------*

* 1. Fijar directorio de trabajo aquí

clear all
cd ""



*************
* Pregunta 1
*************

* Cargar datos WDi 
use wdi, clear

* Escribir el "test" 


*************
* Pregunta 2
*************

* Juntar ambas bases de datos y escribir el test.


*-----------*

* Ejercicio 2

*-----------*

* Estas son las regresiones originales a las que hace referencia el ejercicio

**************
* Regresiones
**************

* Espeficifación base 
reg polity natural_resources_pct_gdp gdp_per_cap

* Agregando experanza de vida como control
reg polity natural_resources_pct_gdp gdp_per_cap life_expectancy

* Agregando mortalidad como control
reg polity natural_resources_pct_gdp gdp_per_cap under5_mortality

* Agregando riesgo materno como control
reg polity natural_resources_pct_gdp gdp_per_cap maternal_death_risk


*************
* Pregunta 1
*************

* Identifique la "base" de la regresion
* Agrege population como control en todas las regresiones, pero siguiendo el 
* principio de no duplicar información. 


*-----------*

* Ejercicio 3

*-----------*

clear all

* Cargar datos WDi 
use wdi, clear

* Calcular promedio y guardarlo como local


* Exportarlo como un string. 
