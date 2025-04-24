FROM ubuntu:24.04

# Set required libraries here, e.g. "libssl-dev libboost-all-dev"
ARG LIBS=""
ENV TARGET_CPP="" 

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    ${LIBS} && \
    apt-get clean && rm -rf /var/lib/apt/lists/* \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

WORKDIR "/"

ENTRYPOINT [ "/entrypoint.sh" ]
