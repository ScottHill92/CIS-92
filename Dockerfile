FROM docker.io/python:3.10

RUN pip install --upgrade pip
RUN apt update
RUN pip install django
RUN pip install psycopg2-binary
COPY mysite /mysite 
WORKDIR /mysite
ENV PORT=$PORT
CMD python ./manage.py runserver 0.0.0.0:$PORT