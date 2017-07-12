FROM debian:jessie
MAINTAINER Sean Kang <es.guybrush@gmail.com>

RUN apt-get update && apt-get install -y curl rsync ssh git
RUN curl -O https://packages.chef.io/files/stable/chefdk/1.5.0/debian/8/chefdk_1.5.0-1_amd64.deb
RUN dpkg -i chefdk_1.5.0-1_amd64.deb
RUN rm chefdk_1.5.0-1_amd64.deb
