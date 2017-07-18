FROM debian:jessie
MAINTAINER Sean Kang <es.guybrush@gmail.com>

RUN apt-get update && apt-get install -y curl rsync ssh git
RUN curl -O https://packages.chef.io/files/stable/chefdk/2.0.28/debian/8/chefdk_2.0.28-1_amd64.deb
RUN dpkg -i chefdk_2.0.28-1_amd64.deb
RUN rm chefdk_2.0.28-1_amd64.deb
