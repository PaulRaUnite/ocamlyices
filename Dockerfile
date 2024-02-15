FROM ubuntu:22.04 AS dev
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y build-essential m4 autoconf curl git libgmp-dev libmpfr-dev opam && apt-get clean

WORKDIR /home/root/
RUN apt install -y wget
COPY /vendor/* .
RUN wget -nc https://yices.csl.sri.com/old/binaries/yices-1.0.40-x86_64-unknown-linux-gnu.tar.gz
COPY install-yices.sh .
RUN bash install-yices.sh ./yices-1.0.40-x86_64-unknown-linux-gnu.tar.gz
RUN opam init --disable-sandboxing
RUN opam update
RUN opam install -y dune ocaml-lsp-server ocamlformat user-setup