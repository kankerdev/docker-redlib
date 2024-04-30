FROM alpine:3.19

RUN adduser --home /nonexistent --no-create-home --disabled-password redlib
USER redlib

COPY ./redlib-bin /usr/local/bin/redlib

EXPOSE 8080

HEALTHCHECK --interval=1m --timeout=3s CMD wget --spider --q http://localhost:8080/settings || exit 1

ENTRYPOINT [ "/usr/local/bin/redlib" ]