# Usa una imagen base de Linux
FROM amazonlinux:2

# Instala actualizaciones y herramientas necesarias
RUN yum update -y && \
    yum install -y git

# Configura tu aplicación
WORKDIR /app
COPY . /app

# Ejecuta comandos adicionales si es necesario
RUN npm install

# Comando para iniciar tu aplicación
CMD ["node", "app.js"]
