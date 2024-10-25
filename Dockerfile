FROM python:3.10-slim

RUN apt-get update && apt-get install -y binutils libproj-dev gdal-bin

WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app

COPY  ./command/start /start
RUN sed -i 's/\r$//g' /start
RUN chmod +x /start
