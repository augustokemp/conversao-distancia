FROM python:3.9

COPY . .

ENV FLASK_APP=app.py
ENV FLASK_ENV=development
ENV FLASK_RUN_PORT=5000
ENV FLASK_RUN_HOST=0.0.0.0

RUN pip install -r requirements.txt

CMD ["flask", "run"]