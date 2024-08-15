FROM golang:1.20 AS builder
WORKDIR /app
COPY . /app
RUN go mod download && go mod verify \
    && cd /app \
    && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o frontend

FROM scratch
WORKDIR /app
COPY --from=builder /app/templates /app/templates 
COPY --from=builder /app/static /app/static 
COPY --from=builder /app/frontend /app/
ENTRYPOINT ["./frontend"]