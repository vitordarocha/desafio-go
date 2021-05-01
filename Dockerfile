FROM golang:latest AS builder

WORKDIR /app
COPY desafio-go.go /app

RUN go build desafio-go.go

FROM scratch

WORKDIR /app

COPY --from=builder /app/desafio-go .

CMD [ "./desafio-go" ]