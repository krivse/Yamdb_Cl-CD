FROM python:3.7-slim

WORKDIR /app

COPY . .

RUN pip3 install -r api_yamdb/requirements.txt --no-cache-dir

CMD ["python3", "manage.py", "runserver", "0:8000"]