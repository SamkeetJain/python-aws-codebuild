FROM python:3
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com>"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD FLASK_APP=hello.py flask run
