# Imagen base de nginx
FROM nginx:alpine

# Elimina el contenido por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia el contenido del proyecto al directorio por defecto de nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# nginx ya se inicia por defecto en la imagen base