FROM alpine

COPY lars@redhat.com-5850022b.rsa.pub /etc/apk/keys
RUN echo http://people.redhat.com/lkellogg/apk/ >> /etc/apk/repositories
RUN apk --update add babeld
