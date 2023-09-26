#!/bin/bash

# Remove the airflow-worker.pid if it exists
PID_FILE="/opt/airflow/airflow-worker.pid"
if [ -f "$PID_FILE" ]; then
    rm "$PID_FILE"
fi

# Now, run the Airflow Celery worker
exec airflow celery worker
