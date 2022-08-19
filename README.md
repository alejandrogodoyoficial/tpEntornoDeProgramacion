 **Facultad de Ciencias Exactas Ingeniería y Agrimensura**
## Tecnicatura Universitaria en Inteligencia Artificial
##Trabajo practico - Entorno de Programacion
### Alejandro Godoy
### **Descripción:**
Scripts para el analisis de texto
1. **statsWords.sh:**
Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).
2. **statsUsageWords.sh:**
Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.
3. **findNames.sh:**
Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.
Ejemplos: Mateo, Estonoesunnombre, Ana.
4. **statsSentences.sh:**
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).
5. **blankLinesCounter.sh:**
Contador de líneas en blanco.
### Modo de uso:
1. **Primero:** Ingresar a la carpeta tpEntornoDeProgramacion
2. **Segundo** Ejecutar "docker build . -t tpEntorno"
3. **Tercero:** Ejecutar "docker container run -it -v $(pwd)/text:/text:ro --rm tpEntorno"
# tpEntornoDeProgramacion
# tpEntornoDeProgramacion
