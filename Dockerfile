# Usé una imagen ligera de Nginx
FROM nginx:alpine

# Copie los archivos de tu proyecto al directorio que Nginx usa para servir contenido
# Si tu código está en la raíz junto al Dockerfile, usamos "."
COPY . /usr/share/nginx/html

# Expongo el puerto 80
EXPOSE 80

# Comando para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]
# Actualización para activar el pipeline
