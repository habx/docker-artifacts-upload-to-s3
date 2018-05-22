#!/bin/sh

DST=s3://${PLUGIN_S3_REPO}/${DRONE_REPO_NAME}/$(date -d @${DRONE_BUILD_CREATED} --rfc-3339=date)/$(date -d @${DRONE_BUILD_CREATED} +%H-%M)/
CMD=aws s3 cp -r ${ARTIFACT} ${DST}
echo $CMD
$CMD
