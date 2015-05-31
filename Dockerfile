FROM leanlabs/erlang

RUN apk --update add git \
        gcc \
        g++ \
        curl \
        erlang-syntax-tools \
        erlang-tools \
        erlang-reltool \
        erlang-erl-interface

VOLUME ["/data"]

WORKDIR /usr/bin

RUN curl -O https://raw.githubusercontent.com/wiki/rebar/rebar/rebar \
    && chmod +x rebar
