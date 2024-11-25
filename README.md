## Docker - Airflow Practice

#### Set up with Docker & Run
Custom image are defined in Dockerfile, which will include installing packages for the system (chronium, mandoc) and set of libraries in the file `requirements.txt`.

The `docker-compose` is followed as the latest Airflow docker-compose version by this link: https://airflow.apache.org/docs/apache-airflow/2.10.3/docker-compose.yaml


#### Demo DAG
I implement one DAG as an example for this project run. The DAG will get data which are Reddit posts through Reddit API (https://www.reddit.com/dev/api/), then do some transformations and export the data as CSV files in folder `/data/output`.


