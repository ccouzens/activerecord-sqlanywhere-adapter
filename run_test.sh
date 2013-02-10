#!/usr/bin/env bash
source /opt/sqlanywhere12/bin64/sa_config.sh
source ~/.rvm/scripts/rvm

cd ~/Documents/databases/
if [ ! -e arunit.db ]
then
    dbinit -c arunit
fi
if [ ! -e arunit2.db ]
then
    dbinit -c arunit2
fi
dbsrv12 arunit arunit2 >/dev/null &
sleep 1

cd ~/Documents/rails/activerecord/

SQLANYWHERE=sqlanywhere rake test_jdbcsqlanywhere > ../../activerecord-sqlanywhere-adapter/test_output.txt 2> ../../activerecord-sqlanywhere-adapter/test_error.txt
