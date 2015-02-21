FROM debian:wheezy

RUN apt-key adv --keyserver pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA \
    && echo 'deb http://packages.erlang-solutions.com/debian wheezy contrib' > /etc/apt/sources.list.d/erlang.list \
    && apt-get update \
    && apt-get install -y git \
    && apt-get install -y gcc \
    && apt-get install -y g++ \
    && apt-get install -y erlang \
    && apt-get install -y curl

WORKDIR /usr/bin

RUN curl -O https://raw.githubusercontent.com/wiki/rebar/rebar/rebar \
    && chmod +x rebar

CMD ["/bin/bash"]
