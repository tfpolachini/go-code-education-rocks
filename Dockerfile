FROM golang:1.18-alpine AS builder

WORKDIR /app

COPY main.go /app/

RUN go build /app/main.go


FROM scratch

WORKDIR /app

COPY --from=builder /app/main .

ENTRYPOINT [ "/app/main" ]