FROM hbpmip/meta-db-setup:1.1.1
MAINTAINER Ludovic Claude <ludovic.claude@chuv.ch>

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

COPY variables.json /src/variables/harmonized.json
ENV CDE_DEFINITIONS="harmonized" \
    CDE_TARGET_TABLES="harmonized_DATA"

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="hbpmip/harmonized-meta-db-setup" \
      org.label-schema.description="Meta database setup with harmonized variables" \
      org.label-schema.url="https://github.com/LREN-CHUV/harmonized-meta-db-setup" \
      org.label-schema.vcs-type="git" \
      org.label-schema.vcs-url="https://github.com/LREN-CHUV/harmonized-meta-db-setup" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version="$VERSION" \
      org.label-schema.vendor="LREN CHUV" \
      org.label-schema.license="Apache2.0" \
      org.label-schema.docker.dockerfile="Dockerfile" \
      org.label-schema.schema-version="1.0"
