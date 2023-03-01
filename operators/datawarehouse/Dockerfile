FROM postgres:latest

# Establecer variable de entorno POSTGRES_PASSWORD
ENV POSTGRES_PASSWORD datascienceg2

# Copiar script init.sql al contenedor
COPY processed-ubuntu-packages.csv /ubuntu-packages.csv

# Copiar archivo csv al contenedor
COPY ./scripts/init.sql /docker-entrypoint-initdb.d/

# Exponer puerto 5432 para que se pueda acceder a PostgreSQL
EXPOSE 5432

# Conectarse a la base de datos con el comando:
# psql -U postgres

# Hacer todas las peticiones, por ejemplo:
# SELECT * FROM ubuntu_packages LIMIT 10;