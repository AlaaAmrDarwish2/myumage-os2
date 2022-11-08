FROM alpine:latest

RUN apk update
RUN apk add python3 py3-pip
RUN mkdir app
COPY index.py app/index.py
WORKDIR /app
EXPOSE 8080

ENTRYPOINT ["python3" , "index.py"]
