FROM alpine:latest
MAINTAINER Rosbit Xu <me@rosbit.cn>

RUN apk update \
    && apk add make gcc g++ git python \
    && git clone https://github.com/munificent/wren wren \
    && cd wren && make && mv wren /usr/local/bin \
    && cd .. && rm -rf wren \
    && apk del make gcc g++ git python

CMD ["wren"]
