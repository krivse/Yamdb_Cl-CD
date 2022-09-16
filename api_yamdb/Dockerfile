FROM python:3.7-slim

RUN pip3 install --upgrade pip

RUN python -m pip install psycopg2-binary

RUN mkdir /app

WORKDIR /app

COPY . .

RUN pip3 install -r app/requirements.txt --no-cache-dir

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]
