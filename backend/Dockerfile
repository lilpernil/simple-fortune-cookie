FROM golang:1.22 AS builder
WORKDIR /app
COPY . /app
RUN go mod download && go mod verify \
    && cd /app \
    && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o backend

FROM scratch
WORKDIR /app
COPY --from=builder /app/backend /app/
ENTRYPOINT ["./backend"]
