ARG BASE_TAG=latest
FROM apluslms/grade-python:$BASE_TAG

ENV DEBIAN_FRONTEND=noninteractive

RUN apt_install \
    ghdl \
    build-essential \
    git \
    make \
    wget \
    python3-dev \
    libpython3-dev \
    pkg-config

RUN pip_install \
    cocotb \
    cocotb-test \
    numpy
