# Usar una imagen base de Nginx
FROM node:14.4.0


# Copiar el contenido del frontend a la carpeta predeterminada de Nginx
COPY . package*.json ./
RUN npm install
ENTRYPOINT npm start


# Exponer el puerto 80
EXPOSE 8001
CMD ["node", "server.js"]