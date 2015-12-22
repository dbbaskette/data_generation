#!/bin/bash

if [ -z $1 ]
  then
    echo 'enter number of customers as command line argument'
  else
    psql -U gpadmin -p 5432 -f hawq.sql -v customers=$1
    export PGPASSWORD=gpadmin
    psql -p 5432 -U gpadmin -c "VACUUM ANALYZE trans_fact"
fi

