# Usa una imagen base de Java
FROM eclipse-temurin:17-jdk

# Crea un directorio en el contenedor
WORKDIR /app

# Copia el JAR de tu proyecto (asegúrate de tenerlo generado con Maven/Gradle)
COPY target/*.jar app.jar

# Expone el puerto donde corre tu app
EXPOSE 8080

# Comando para ejecutar el JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
