#!/bin/sh

DST="s3://${PLUGIN_S3_REPO}/${DRONE_REPO_NAME}/$(date -d @${DRONE_BUILD_CREATED} --rfc-3339=date)/$(date -d @${DRONE_BUILD_CREATED} +%H-%M)/"
URL="https://${PLUGIN_S3_REPO}.s3.amazonaws.com/${DRONE_REPO_NAME}/$(date -d @${DRONE_BUILD_CREATED} --rfc-3339=date)/$(date -d @${DRONE_BUILD_CREATED} +%H-%M)/${ARTIFACT}"
CMD="aws s3 cp ${ARTIFACT} ${DST}"
echo $CMD
$CMD

echo $URL
