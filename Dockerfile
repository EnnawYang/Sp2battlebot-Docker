FROM python:3.7-alpine

COPY rootfs /

RUN apk add --no-cache git gcc sed musl-dev postgresql-dev libffi-dev && \
    git clone https://github.com/JoneWang/sp2battlebot && \
	chmod +x start.sh && cd sp2battlebot && mkdir logs && \
	sed -i "s@COMMIT_HASH@$(git rev-parse --short HEAD)@" /Version && \
	sed -i "s@DATE_TIME@$(date +"%Y/%m/%d %H:%M")@" /Version && \
    pip --no-cache-dir install -r requirements.txt && \
    apk del --purge git gcc musl-dev postgresql-dev libffi-dev && \
    rm -rf /var/cache/apk/* /tmp/*

WORKDIR /sp2battlebot

ENV DATABASE_URL="sqlite:///sp2battle.db"

ENTRYPOINT ["/start.sh"]
