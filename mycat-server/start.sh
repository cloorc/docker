#!/bin/sh
cd $MYCAT_HOME/conf/
sed -i "s/loadZk=false/loadZk=${E_LOAD_ZK:-false}/g" ./myid.properties
sed -i "s/zkURL=127.0.0.1:2181/zkURL=${E_ZK_URL:-127.0.0.1:2181}/g" ./myid.properties
$MYCAT_HOME/bin/mycat $*
