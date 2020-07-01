FROM concourse/git-resource:1.6.2

ENV LC_ALL C
RUN apk add --update coreutils
RUN mv /opt/resource /opt/git-resource

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*
