# Usamos una imagen ligera de servidor web
FROM nginx:alpine

# Copiamos un archivo index.html (si lo tienes) al servidor
# Si no tienes uno, esto creará uno de prueba
RUN echo "<h1>Hola Mundo - Despliegue Exitoso</h1>" > /usr/share/nginx/html/index.html

# Exponemos el puerto 8080 que es el que usa Cloud Run por defecto
EXPOSE 8080

# Ajustamos nginx para que escuche en el puerto 8080
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
