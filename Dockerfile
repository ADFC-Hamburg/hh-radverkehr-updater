FROM ubuntu:22.04

RUN apt update
RUN apt dist-upgrade --yes
RUN apt install git --yes
RUN apt clean
RUN mkdir -p /src/hh-radverkehr ~/.ssh
RUN ssh-keyscan -H github.com >> ~/.ssh/known_hosts
COPY run.sh /srv

RUN chmod 755 /srv/run.sh
CMD /srv/run.sh
