#!/bin/bash

# Wait for the database to be available
echo "Waiting for the database to be available..."
while ! nc -z postgres 5432; do 
  sleep 1;
done

# Run the DB initialization (it's idempotent)
#!/bin/bash

# First, try running db migrate
airflow db migrate

# Check the exit status of the db migrate command
if [ $? -ne 0 ]; then
    echo "db migrate failed, trying db init..."
    airflow db init
    if [ $? -ne 0 ]; then
        echo "db init also failed. Exiting."
        exit 1
    fi
fi

# Create a user
# This will only attempt to create a user if AIRFLOW_USERNAME environment variable is set.
if [ -n "$AIRFLOW_USERNAME" ]; then
    airflow users create \
        --username $AIRFLOW_USERNAME \
        --firstname ${AIRFLOW_FIRSTNAME} \
        --lastname ${AIRFLOW_LASTNAME} \
        --role ${AIRFLOW_ROLE} \
        --email ${AIRFLOW_EMAIL} \
        --password ${AIRFLOW_PASSWORD}

fi

exec airflow webserver
