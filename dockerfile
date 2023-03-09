FROM golang:1.8
WORKDIR /go/src/app
COPY ./src/app .
RUN go build -o hello-full-cycle .

CMD ./hello-full-cycle