FROM python:3.7-slim

RUN pip3 install --upgrade pip

RUN python -m pip install psycopg2-binary

RUN mkdir /app

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r /code/requirements.txt

COPY . /app

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]
