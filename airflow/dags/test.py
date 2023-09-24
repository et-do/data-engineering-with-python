# Filename: simple_dag.py

from datetime import datetime
from airflow import DAG
from airflow.operators.python_operator import PythonOperator

# Define the default_args dictionary
default_args = {
    'owner': 'airflow',
    'start_date': datetime(2023, 9, 24),
    'retries': 1,
}

# Instantiate a DAG
dag = DAG(
    'simple_dag',
    default_args=default_args,
    description='A simple tutorial DAG',
    schedule_interval='@daily',
    catchup=False,
)

# Define the Python functions for the PythonOperators
def start_func():
    print("Starting the process...")

def end_func():
    print("Process ended!")

# Create the Python operators
start = PythonOperator(
    task_id='start_task',
    python_callable=start_func,
    dag=dag,
)

end = PythonOperator(
    task_id='end_task',
    python_callable=end_func,
    dag=dag,
)

# Set the task dependencies
start >> end
