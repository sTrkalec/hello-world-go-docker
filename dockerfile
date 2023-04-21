# Build container
FROM golang:1.8-alpine as builder
WORKDIR /go/src/app
COPY ./src/app .
RUN go build -o hello-full-cycle .

# Final container
FROM scratch
COPY --from=builder /go/src/app/hello-full-cycle /hello-full-cycle
CMD ["/hello-full-cycle"]
