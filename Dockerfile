FROM nginx:alpine

# Configuramos Nginx para que escuche en el puerto 8080 en lugar del 80
RUN sed -i 's/listen\(.*\)80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Copiamos tus archivos al directorio de Nginx
COPY . /usr/share/nginx/html

# Informamos que el puerto usado es el 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
