FROM ocaml/opam:ubuntu-22.04-ocaml-5.1 AS dev
ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get update && sudo apt-get install -y build-essential m4 autoconf git wget libgmp-dev libmpfr-dev && sudo apt-get clean

WORKDIR /home/opam/
COPY install-yices.sh vendor/* ./
RUN wget -nc https://yices.csl.sri.com/old/binaries/yices-1.0.40-x86_64-unknown-linux-gnu.tar.gz
RUN sudo bash install-yices.sh ./yices-1.0.40-x86_64-unknown-linux-gnu.tar.gz
RUN opam init
RUN opam install -y dune ocaml-lsp-server ocamlformat user-setup
