#!/bin/bash

# Used to insert view configs into kibana

echo "running elk-post-hooks.sh"

set -x

curl -X POST 'http://localhost:5601/api/saved_objects/_import?createNewCopies=true' \
     -H 'kbn-xsrf: true' \
     --form file=@/usr/local/bin/elk-kibana-config.ndjson
