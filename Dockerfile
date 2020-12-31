FROM python:3.7-alpine

RUN apk add --no-cache git gcc musl-dev postgresql-dev libffi-dev && \
    git clone https://github.com/JoneWang/sp2battlebot &&\
    pip --no-cache-dir install -r sp2battlebot/requirements.txt && \
    apk del --purge git gcc musl-dev postgresql-dev libffi-dev && \
    rm -rf /var/cache/apk/* /tmp/*

WORKDIR /sp2battlebot

ENV DATABASE_URL="sqlite:///sp2battle.db"

ENTRYPOINT ["python","service.py"]
