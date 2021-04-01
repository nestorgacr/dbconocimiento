# **Docker**

## Comandos básicos 
### Contenedores

- Lista los contenedores **`docker ps`**
- Lista todos los contenedores **`docker ps -a`**
- Retorna los ids de los contenedores **`docker ps -q`**
- Borrar un contenedor **`docker rm -fv <nombre del contenedor>`**, la "v" indica que tambien borre el volumen
- Borrar contenedores detenidos **`docker ps -a -q | xargs docker rm -f`**
- Mustra datos de un contenedor **`docker inspect <nombre del contenedor>`**
- Borra todos los contenedores **`docker rm -fv $(docker ps -aq)`**
- Muestra en consumo de un contenedor **`docker stats <nombre contenedor>`**
- Root del contenedor **`docker info | grep -i root`**
- Definir puertos **`docker run -d -p <puerto origen>:<puerto docker> jenkins`**
- Renombrar un contenedor **`docker rename <nombre actual> <nuevo nombre>`**
- Detener un contenedor **`docker stop <nombre o id del contenedor>`**
- Inicir un contenedor **`docker start <nombre del contenedor>`**
- Reiniciar un contenedor **`docker restart <nombre del contenedor>`**
- Ingresar a la línea de comando de un contenedor Linux **`docker exec -ti jenkins_test bash`**
- Ingresar a la línea de comando de un contenedor Windows **`winpty docker exec -it jenkins_test bash`**

### Imágenes 
- Lista las imagenes **`docker images`**
- Lista las imagenes pero buscando por nombre **`docker images | grep apache`**
- Muestra el historial de cambios de una imagen **`docker history -h <nombre de la imagen>:tag`**
- Borrar una imagen **`docker rmi <nombre de la imagen>`**
- Borra las dangling images **`docker images -f dangling=true -q | xargs docker rmi`**. Cuando se hace un build y se utiliza el mismo nombre, se crea una nueva imagen y la anterior pierde el nombre y el tag.
- Descargar una imagen **`docker pull <nombre de la imagen>`**, ejemplo: **`docker pull mongo`**
- Descargar una imagen especificando tag **`docker pull <nombre de la imagen>:tag`**, ejemplo: **`docker pull centos:7`**

#### Dockerfile
##### Etiquetas
- FROM
- RUM
- CMD
- COPY  <origen> <destino>
- ADD   <origen> <destino>
- ENV  <Nombre Variable> <Contendio>
- WORKDIR <directorio de trabajo>
- EXPOSE <puerto>
- LABEL
- USER
- VOLUME

##### Ejemplo

`FROM centos`\
`RUN yum -y install httpd`\
`CMD apachectl -DFOREGROUND`\

Crear la imagen **`docker build --tag <nombre Imagen>:<tag>  .`**, el "." indica que el dockerfile esta en el mismo directorio


### Volumenes
- Lista los volumenes **`docker volume ls`**
