FROM openjdk:8

ARG logViewerVersion

ENV logviewer_version=${logViewerVersion} \
    logviewer_url_base=https://github.com/sevdokimov/log-viewer/releases/download \
    logviewer=log-viewer-${logViewerVersion}
    

RUN curl -L ${logviewer_url_base}/v.${logviewer_version}/${logviewer}.tar.gz \
    | tar xzv

ENTRYPOINT /${logviewer}/logviewer.sh