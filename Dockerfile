FROM python:3.8.9-slim

RUN pip3 install --upgrade pip

RUN python -m pip install psycopg2-binary

WORKDIR /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY . .

RUN pip3 install -r requirements.txt --no-cache-dir

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]
