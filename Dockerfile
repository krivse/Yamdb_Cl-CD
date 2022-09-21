FROM python:3.9-slim

WORKDIR /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY . .

RUN pip3 install -r requirements.txt --no-cache-dir

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]
