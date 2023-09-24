This repo contains a docker-compose devcontainer environment to handle all 
coding exercises in Data Engineering with Python by Paul Crickard.

Running docker-compose up will build & run all the containers and dependencies
necessary to run all the code and services in the book. This takes a lot of headache
out of getting started as airflow, spark, kafka, etc. can all take significant amount of setup time.


### quick_start:
- cd to .devcontainer
- run docker-compose up
- init airflow with: docker-compose run airflow-webserver airflow db init

### manage stack:
- start stack with: docker-compose up -d
- shutdown stack with: docker-compose stop