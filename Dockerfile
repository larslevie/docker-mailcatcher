FROM ruby:2.4.1-alpine
MAINTAINER Lars Levie <larslevie@gmail.com>

WORKDIR /code

COPY install.sh /code/
RUN chmod +x ./install.sh && ./install.sh

# smtp port
EXPOSE 1025

# webserver port
EXPOSE 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
