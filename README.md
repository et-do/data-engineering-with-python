# Devcontainer Environments for Data Engineering with Python

This repository provides `docker-compose` devcontainer environments tailored for the coding exercises in "Data Engineering with Python" by Paul Crickard.

## Benefits of this setup:
- **Streamlined Setup**: Run `docker-compose up` to build & launch all the necessary containers and dependencies, eliminating the need for manual configuration.
- **Unified Environment**: While each service runs in its separate container, they all operate within the same network, ensuring smooth interaction.
- **Integrated with VSCode**: With the "Attach to Running Container" feature in the VSCode remote desktop extensions, working within a container is straightforward.
- **Direct Access**: Directories like "airflow" are mounted to the main VSCode directory for ease of access to configurations and DAGs.

## Prerequisites

Ensure you have:
- VSCode with the dev containers extension.
- Docker, configured with WSL.

## Quick Start

1. Create a `.env` file in the `/.devcontainer` directory with the following variables:
    ```plaintext
    AIRFLOW_PROJ_DIR
    PGADMIN_DEFAULT_EMAIL
    PGADMIN_DEFAULT_PASSWORD
    ```
2. Open the repository in VSCode.
3. In your terminal, navigate to `.devcontainer`.
4. Execute `docker-compose build`
4. Execute `docker-compose up`.
7. Open PgAdmin in a browser and register your postgres server
- name = airflow
- host name = postgres
- port = 5432
- username = airflow
- password = airflow