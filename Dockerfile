FROM python:3.8.0

RUN mkdir -p /usr/src/flask_app/
COPY src/requirements.txt /usr/src/flask_app/

WORKDIR /usr/src/flask_app/
RUN pip install -r requirements.txt

COPY . /usr/src/flask_app

ENTRYPOINT ["python", "src/application.py"]
EXPOSE 5000
