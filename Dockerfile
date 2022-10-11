FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on
RUN go install github.com/royalfriesian/golang_mongo_crud@latest
RUN cd /build && git clone https://github.com/RoyalFriesian/golang_mongo_crud.git

RUN cd /build/golang_mongo_crud && go build

EXPOSE 8080

ENTRYPOINT ["/build/golang_mongo_crud"]
