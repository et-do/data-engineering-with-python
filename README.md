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
    PGADMIN_DEFAULT_EMAIL
    PGADMIN_DEFAULT_PASSWORD
    POSTGRES_USER
    POSTGRES_PASSWORD
    AIRFLOW_USERNAME
    AIRFLOW_FIRSTNAME
    AIRFLOW_LASTNAME
    AIRFLOW_ROLE
    AIRFLOW_EMAIL
    AIRFLOW_PASSWORD
    ```
2. Open the repository in VSCode.
3. In your terminal, navigate to `.devcontainer`.
4. Execute `docker-compose up`.
5. Initialize Airflow: 
   ```bash
   docker-compose run airflow-webserver airflow db init
   ```
6. Adjustments in `postgresql.conf` may be necessary within the postgres container to enable port listening.
7. Use the "Attach to Running Container" feature in VSCode to work directly within a container.

## Managing Your Stack

Commands to manage your stack:
- Launch your stack: `docker-compose up -d`
- Access a container: `docker exec -it [container_name] bash`
- Shutdown your stack: `docker-compose down`

Should you encounter issues or have suggestions, please contribute or open an issue.
