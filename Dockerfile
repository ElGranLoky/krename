FROM jlesage/baseimage-gui:ubuntu-18.04

LABEL maintainer="carvajal.diego@gmail.com"

# Install krename
RUN apt-get update && \
    apt-get -y --no-install-recommends install krename && \
    rm -rf /var/lib/apt/lists/*

# Locale
ENV LANG=es_ES.UTF-8
RUN apt-get update && \
    apt-get -y --no-install-recommends install locales && \
    locale-gen en_US.UTF-8 && \
    locale-gen es_ES.UTF-8 && \
    rm -rf /var/lib/apt/lists/*

# Define Run
ENV APP_NAME="krename"
COPY startapp.sh /startapp.sh