FROM ubuntu:16.04
ARG RUST_INIT=/tmp/rustup-init.sh
ARG RUST_VERSION

RUN apt-get -y update
RUN apt-get install -y curl make gcc pkg-config libssl-dev libgoogle-perftools-dev libsodium-dev
RUN curl https://sh.rustup.rs -sSf > ${RUST_INIT}
RUN sh ${RUST_INIT} -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup install ${RUST_VERSION}
RUN rustup default ${RUST_VERSION}
RUN rm -rf /var/lib/apt/lists/* && rm -rf ${RUST_INIT}

CMD rustup show