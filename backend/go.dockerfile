FROM golang:1.22-alpine


WORKDIR /app


COPY . .


#download and install dependencies

run go get -d -v ./...

RUN go build -o api .

EXPOSE 8000

CMD ["./api"]