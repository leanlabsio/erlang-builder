FROM leanlabs/erlang:1.0.0

RUN apk --update add git \
        gcc \
        g++ \
        curl \
        erlang-syntax-tools \
        erlang-tools \
        erlang-parsetools \
        erlang-dev \
        erlang-reltool \
        erlang-erl-interface && \
    curl -O https://raw.githubusercontent.com/wiki/rebar/rebar/rebar && \
    chmod +x rebar && \
    mv rebar /usr/bin

VOLUME ["/data"]

WORKDIR /data
