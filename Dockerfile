FROM golang:1.16-buster

RUN go get github.com/jsha/minica

WORKDIR /opt/devCA

ENTRYPOINT ["/go/bin/minica"]
CMD ["--help"]
