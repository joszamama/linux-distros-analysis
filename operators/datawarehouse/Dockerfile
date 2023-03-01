FROM postgres:latest

# Establecer variable de entorno POSTGRES_PASSWORD
ENV POSTGRES_PASSWORD datascienceg2

# Copiar script init.sql al contenedor
COPY ubuntu-packages_preprocesado.csv /ubuntu-packages.csv

# Copiar archivo csv al contenedor
COPY init.sql /docker-entrypoint-initdb.d/

# Exponer puerto 5432 para que se pueda acceder a PostgreSQL
EXPOSE 5432



# INSTRUCCIONES ENTRAR EN EL DATAWAREHOUSE

# Una vez iniciado todo con los tipicos comandos:
# docker build -t nombredelaimagen .
# docker run --name nombredelcontenedor -p 5432:5432 -d nombredelaimagen

# Tenemos que escribir:
# docker exec -it <nombre_del_contenedor> bash

# Luego:
# psql -U postgres

# Y ya podremos hacer todas las peticiones, por ejemplo:
# SELECT * FROM ubuntu_packages LIMIT 10;

