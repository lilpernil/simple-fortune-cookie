FROM golang:1.20 as builder
WORKDIR /app
COPY . /app
RUN go mod download && go mod verify \
    && cd /app \
    && go build -o goapp

FROM scratch
WORKDIR /app
COPY --from=builder /app/goapp /app/
ENTRYPOINT ["./goapp"]