FROM golang:latest

WORKDIR .
COPY . .

RUN go get -d -v github.com/lib/pq github.com/julienschmidt/httprouter
RUN go build -o a.out

EXPOSE 8000
