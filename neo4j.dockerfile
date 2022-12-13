ARG neo4jVersion

FROM neo4j:${neo4jVersion}

RUN keytool \
    -genseckey \
    -keyalg aes \
    -keysize 256 \
    -storetype pkcs12 \
    -keystore '/var/lib/neo4j/conf/secrets' \
    -alias 'secrets' \
    -storepass 'foobar'
