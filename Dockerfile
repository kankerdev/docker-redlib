FROM scratch
COPY ./redlib-bin /redlib
EXPOSE 8080
ENTRYPOINT [ "/redlib" ]