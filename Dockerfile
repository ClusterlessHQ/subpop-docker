# Generated with JReleaser 1.14.0 at 2024-11-03T19:21:45.753413013Z
FROM azul/zulu-openjdk-alpine:21-jre

    LABEL "org.opencontainers.image.title"="subpop"
    LABEL "org.opencontainers.image.description"="SubPop is a command line utility for finding the differences between one or more tabular datasets."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-4"
    LABEL "org.opencontainers.image.revision"="5f9f7cd2228a4301990ee3ff8c9d8d3f9a212234"


COPY assembly/* /

RUN unzip subpop-1.0-wip-4.zip && \
rm subpop-1.0-wip-4.zip && \
chmod +x subpop-1.0-wip-4/bin/subpop && \
mv /subpop-1.0-wip-4 /subpop

ENV PATH="${PATH}:/subpop/bin"


ENTRYPOINT ["/subpop/bin/subpop"]

CMD ["--help"]
