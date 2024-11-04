# Generated with JReleaser 1.15.0 at 2024-11-04T16:30:29.629605119Z
FROM azul/zulu-openjdk-alpine:21-jre

    LABEL "org.opencontainers.image.title"="subpop"
    LABEL "org.opencontainers.image.description"="SubPop is a command line utility for finding the differences between one or more tabular datasets."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-9"
    LABEL "org.opencontainers.image.revision"="e93d3cfe7fe77755c00dbefc7aa58ece16f9d3ab"


COPY assembly/* /

RUN unzip subpop-1.0-wip-9.zip && \
rm subpop-1.0-wip-9.zip && \
chmod +x subpop-1.0-wip-9/bin/subpop && \
mv /subpop-1.0-wip-9 /subpop

ENV PATH="${PATH}:/subpop/bin"


ENTRYPOINT ["/subpop/bin/subpop"]

CMD ["--help"]
