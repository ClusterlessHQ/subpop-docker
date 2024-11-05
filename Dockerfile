# Generated with JReleaser 1.15.0 at 2024-11-05T04:42:15.841310259Z
FROM azul/zulu-openjdk-alpine:21-jre

    LABEL "org.opencontainers.image.title"="subpop"
    LABEL "org.opencontainers.image.description"="SubPop is a command line utility for finding the differences between one or more tabular datasets."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-10"
    LABEL "org.opencontainers.image.revision"="883e792304bf3f702fc799f0d76507e2994fc4ae"


COPY assembly/* /

RUN unzip subpop-1.0-wip-10.zip && \
rm subpop-1.0-wip-10.zip && \
chmod +x subpop-1.0-wip-10/bin/subpop && \
mv /subpop-1.0-wip-10 /subpop

ENV PATH="${PATH}:/subpop/bin"


ENTRYPOINT ["/subpop/bin/subpop"]

CMD ["--help"]
