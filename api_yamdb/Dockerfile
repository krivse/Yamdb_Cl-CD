FROM python:3.9

COPY requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY ./ /app

CMD ["/bin/bash", "./entrypoint.sh"]
