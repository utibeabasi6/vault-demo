FROM golang:alpine as BUILDER

WORKDIR /app

COPY . .

RUN go mod init vault-app 

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux go build .


FROM alpine as RUNNER

COPY --from=BUILDER /app/vault-app .

COPY --from=BUILDER /app/views ./views

COPY --from=BUILDER /app/public ./public

RUN chmod +x vault-app

CMD ["./vault-app"]