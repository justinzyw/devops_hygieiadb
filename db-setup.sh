#!/bin/bash
#the original from capitalone/Hygieia/db/db-setup.sh does not start the mongo service by mongod (not sure why)

mongod --fork --logpath=/var/log/mongodb.log

if [ "$MONGO_STARTED" != "" ]; then
  mongo < /tmp/db-setup.js
fi
