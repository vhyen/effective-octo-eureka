FROM apache/airflow:2.10.3
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  chromium mandoc \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* 

USER airflow
COPY requirements.txt .
RUN pip install -U pip && pip install -r requirements.txt --no-cache-dir
RUN mkdir -p /opt/airflow/
COPY .env /opt/airflow/
