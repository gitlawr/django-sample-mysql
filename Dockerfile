FROM python:3.4-slim

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		mysql-client libmysqlclient-dev \
		postgresql-client libpq-dev \
		sqlite3 \
	--no-install-recommends && rm -rf /var/lib/apt/lists/* && apt-get clean  &&\
	mkdir /code

COPY . /code/

ENV DJANGO_VERSION 1.11

RUN pip install django=="$DJANGO_VERSION"
#mysqlclient psycopg2 
CMD ["/code/manage.py"]
