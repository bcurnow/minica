FROM golang:1.16-buster

RUN go get github.com/jsha/minica

WORKDIR /opt/localCA

ENTRYPOINT ["/go/bin/minica"]
CMD ["--help"]
