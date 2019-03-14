FROM golang:latest
LABEL maintainer="ektich@gmail.com"
LABEL description="Prometheus promtool"

RUN go get github.com/prometheus/prometheus/cmd/promtool

ENTRYPOINT ["promtool"]
