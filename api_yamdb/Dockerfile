FROM python:3.7-slim

RUN pip3 install --upgrade pip

RUN python -m pip install psycopg2-binary

WORKDIR /app

RUN pip3 install -r /Users/krivse/DevGitActions/yamdb_final/api_yamdb/requirements.txt --no-cache-dir

COPY . .

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]
