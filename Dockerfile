FROM scratch

WORKDIR /app

COPY main /app/

ENTRYPOINT [ "/app/main" ]