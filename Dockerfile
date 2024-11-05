FROM python:3.9

WORKDIR /app/

COPY ./requirements.txt /app/

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . /app

ENV PYTHONPATH=/app
ENV FLASK_APP=app.py
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=5000
ENV FLASK_RUN_HOST=0.0.0.0

CMD ["flask", "run"]