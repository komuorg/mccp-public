FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y openssl apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
