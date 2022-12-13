ARG neo4jVersion

FROM neo4j:${neo4jVersion}

ARG apocVersion

ENV apoc_version=${apocVersion} \
    apoc_file=apoc-${apocVersion}-all.jar

RUN wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${apoc_version}/${apoc_file} \
        --output-document=/var/lib/neo4j/plugins/${apoc_file} \
        --quiet

