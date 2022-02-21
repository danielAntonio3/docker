# Version de node con la que trabajaremos
FROM node:12

# copiar los archivos hacia el contenedor
COPY ["package*.json", "/usr/src/"]


# nos movemos a la carpeta de trabajo
WORKDIR /usr/src

# Instalar los paquetes necesarios
RUN npm install

# copiar los archivos hacia el contenedor
COPY [".", "/usr/src/"]

# exponemos el puerto del contenedor por el cual escucharemos
EXPOSE 3000

# comando de ejecucion
CMD ["node", "index.js"]
