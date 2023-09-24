This repo contains a docker-compose devcontainer environment to handle all 
coding exercises in Data Engineering with Python by Paul Crickard

### quick_start:
- cd to .devcontainer
- run docker-compose up
- init airflow with: docker-compose run airflow-webserver airflow db init

### manage stack:
- start stack with: docker-compose up -d
- shutdown stack with: docker-compose stop