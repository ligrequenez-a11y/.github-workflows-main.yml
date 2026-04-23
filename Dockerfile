# Usamos una imagen ligera de Nginx
FROM nginx:alpine

# Copiamos los archivos de tu proyecto al directorio que Nginx usa para servir contenido
# Si tu código está en la raíz junto al Dockerfile, usamos "."
COPY . /usr/share/nginx/html

# Exponemos el puerto 80
EXPOSE 80

# Comando para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]
