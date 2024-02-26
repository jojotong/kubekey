FROM 119.91.121.198:38888/library/alpine:3.10

RUN apk add curl && \
    apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

COPY bin/kk /bin/kk

ENTRYPOINT ["kk"]
