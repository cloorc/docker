#!/usr/bin/env bash
cd $MYCAT_HOME/conf/
sed -i "s/loadZk=false/loadZk=${E_ZK_LOAD:-false}/g" ./myid.properties
sed -i "s/zkURL=127.0.0.1:2181/zkURL=${E_ZK_URL:-127.0.0.1:2181}/g" ./myid.properties
cat ./myid.properties
$MYCAT_HOME/bin/mycat $*
