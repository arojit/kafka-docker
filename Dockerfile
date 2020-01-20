FROM openjdk:8

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt
EXPOSE 9092
CMD ./script.sh