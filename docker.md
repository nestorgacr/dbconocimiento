# **Docker**

## Comandos básicos 
### Contenedores

- Lista los contenedores **`docker ps`**
- Lista los comandos tomando en cuenta los detenidos **`docker ps -a`**
- Retorna los ids de los contenedores **`docker ps -q`**
- Borrar un contenedor **`docker rm -fv <nombre del contenedor>`**, la "v" indica que tambien borre el volumen
- Borrar contenedores detenidos **`docker ps -a -q | xargs docker rm -f`**
- Mustra datos de un contenedor **`docker inspect <nombre del contenedor>`**
- Borra todos los contenedores **`docker rm -fv $(docker ps -aq)`**
- Muestra en consumo de un contenedor **`docker stats <nombre contenedor>`**
- Root del contenedor **`docker info | grep -i root`**
### Imágenes 
- Lista las imagenes **`docker images`**
- Lista las imagenes pero buscando por nombre **`docker images | grep apache`**
- Muestra el historial de cambios de una imagen **`docker history -h <nombre de la imagen>:tag`**
- Borrar una imagen **`docker rmi <nombre de la imagen>`**
- Borra las dangling images **`docker images -f dangling=true -q | xargs docker rmi`**
- Descargar una imagen **`docker pull <nombre de la imagen>`**, ejemplo: **`docker pull mongo`**
- Descargar una imagen especificando tag **`docker pull <nombre de la imagen>:tag`**, ejemplo: **`docker pull centos:7`**

### Volumenes
- Lista los volumenes **`docker volume ls`**
