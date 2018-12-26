FROM python:3-alpine

LABEL maintainer Arun Gautam <arun.itbhu@gmail.com>

ENV PYTHONIOENCODING=UTF-8

ENV PATH="/root/.local/bin:$PATH"

RUN pip install awscli --upgrade --user

RUN apk add build-base

RUN pip install aws-sam-cli --upgrade --user

RUN apk add curl

RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest

RUN chmod +x /usr/local/bin/ecs-cli
