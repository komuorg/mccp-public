FROM ubuntu:18.04

# Install outdated OpenSSL and a web server
RUN apt-get update && \
    apt-get install -y openssl=1.1.1-1ubuntu2.1~18.04.20 apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default command to run Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
