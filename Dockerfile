
FROM python:3.6-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN pip install --upgrade pip && pip install Flask
#     apt-get update && \
#     apt-get install -y postgresql python-psycopg2 libpq-dev cython && \
COPY . /usr/src/app

EXPOSE 5000

CMD ["python", "./app.py" ]
