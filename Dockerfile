FROM python:3
LABEL org.opencontainers.image.maintainer="adeelahmad@live.co.uk"
\      org.opencontainers.image.authors="adeelahmad@live.co.uk"
\      org.opencontainers.image.title="Hello"                       

#      org.opencontainers.image.revision="" FROM git
#      org.opencontainers.image.created="2024-08-13T16:49:01.01Z"

RUN groupadd -g 1000 python && \
    useradd -r -u 1000 -g python python
RUN mkdir /app && chown python:python /app
WORKDIR /app
COPY hello.py .
USER 1000
CMD [ "python", "./hello.py" ]
