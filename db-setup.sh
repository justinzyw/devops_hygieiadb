#!/bin/bash
#the original from capitalone/Hygieia/db/db-setup.sh does not start the mongo service by mongod (not sure why)

mongod --fork --logpath=/var/log/mongodb.log

mongo < /tmp/db-setup.js

mongod --shutdown

mongod
