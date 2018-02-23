FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y autoconf bison build-essential \
                       libssl-dev libyaml-dev libreadline6-dev \
                       zlib1g-dev libncurses5-dev libffi-dev \
                       libgdbm3 libgdbm-dev libxml2 libxml2-dev

CMD ["/bin/bash"]

