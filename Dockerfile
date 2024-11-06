FROM python:3.9

WORKDIR /app/

COPY ./requirements.txt /app/

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . /app

ENV PYTHONPATH=/app

CMD ["gunicorn", "app:app", "--bind=0.0.0.0:5000"]