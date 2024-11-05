# Generated with JReleaser 1.15.0 at 2024-11-05T04:50:31.554830787Z
FROM azul/zulu-openjdk-alpine:21-jre

    LABEL "org.opencontainers.image.title"="subpop"
    LABEL "org.opencontainers.image.description"="SubPop is a command line utility for finding the differences between one or more tabular datasets."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-11"
    LABEL "org.opencontainers.image.revision"="3866d029cce0e7dc79fdc3e1440d8544d589f89e"


COPY assembly/* /

RUN unzip subpop-1.0-wip-11.zip && \
rm subpop-1.0-wip-11.zip && \
chmod +x subpop-1.0-wip-11/bin/subpop && \
mv /subpop-1.0-wip-11 /subpop

ENV PATH="${PATH}:/subpop/bin"


ENTRYPOINT ["/subpop/bin/subpop"]

CMD ["--help"]
