FROM ubuntu

# Actualizar lista de paquetes y instalar Java
RUN apt-get update && apt-get install -y openjdk-8-jdk

# Copiar el fichero de NetLogo y el archivo de configuración
COPY final.nlogo /app/

# Establecer la carpeta /app como el directorio de trabajo
WORKDIR /app

# Ejecutar el fichero de NetLogo
CMD ["java", "-jar", "NetLogo.jar", "mi-fichero-de-netlogo.nlogo"]
