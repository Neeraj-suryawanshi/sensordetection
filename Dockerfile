FROM python:3.8
USER root
RUN mkdir /app
COPY . /app/
RUN pip3 install -r requiremnnts.txt
HOME="/app/airflow"
ENV AIRFLOW_CORE_DAGBAG_IMPORT_TIMEOUT=1000
ENV AIRFLOW_CORE_ENABLE_XCOM_PICKLING=True
RUN airflow db init
RUN airflow users create -e suryawanshi.neeraj32@gmail.com -f Neeraj-suryawanshi
RUN chmod 