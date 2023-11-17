ARG neo4jVersion
ARG neo4jLogging

FROM neo4j:${neo4jVersion} AS neo4j-std

RUN apt-get update && apt-get -y install less vim iputils-ping maven unzip

RUN keytool \
    -genseckey \
    -keyalg aes \
    -keysize 256 \
    -storetype pkcs12 \
    -keystore '/var/lib/neo4j/conf/secrets' \
    -alias 'secrets' \
    -storepass 'foobar'

FROM neo4j-std AS neo4j-elk

COPY pom.xml /var/lib/neo4j/lib/
COPY server-logs.xml user-logs.xml /var/lib/neo4j/conf/

RUN mvn -f /var/lib/neo4j/lib/pom.xml package

FROM neo4j-${neo4jLogging}
