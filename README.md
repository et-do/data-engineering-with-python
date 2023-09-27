This repo contains docker-compose devcontainer environments to handle all 
coding exercises in Data Engineering with Python by Paul Crickard.

Running `docker-compose up` will build & run all the containers and dependencies
necessary to run all the code and services in the book. This takes a lot of headache
out of getting started as airflow, spark, kafka, etc. can all take significant amount of setup time.

The services all run in separate containers on the same network, and can be accessed in VSCode like a local
machine using the remote desktop extensions, selecting "Attach to Running Container"

Several containers have frequently used folders mounted to the main vscode directory for easy access. 
For example, "airflow" is mounted to easily adjust the airflow.cfg file as well as have access to DAGs


### prereqs:
- VSCode with dev containers extension installed
- Docker installed and configured with WSL
  
### quick_start:
- create .env file in /.devcontainer with vars:
    - PGADMIN_DEFAULT_EMAIL
    - PGADMIN_DEFAULT_PASSWORD
    - POSTGRES_USER
    - POSTGRES_PASSWORD
    - AIRFLOW_USERNAME
    - AIRFLOW_FIRSTNAME
    - AIRFLOW_LASTNAME
    - AIRFLOW_ROLE
    - AIRFLOW_EMAIL
    - AIRFLOW_PASSWORD
- open in vscode
- cd to .devcontainer
- run docker-compose up
- init airflow with: docker-compose run airflow-webserver airflow db init
- may need to go into postgres container and edit postgresql.conf to allow port listening
- click remote desktop >> "attach to running container" to open container in vscode window

### manage stack:
- start stack with: docker-compose up -d
- enter container: docker exec -it [container_name] bash 
- shutdown stack with: docker-compose down
