#!/bin/sh
export CLASSPATH=../conf:$(find ../lib/ -name *.jar |tr "\n" ":")

java -server -d64 -Xmx1G -Dlog4j.configuration=executor-log4j.properties myapp.fibo.executor.Main &

[[ $?==0 ]] && echo "The fibo server get started. View log at /var/log/fiboexecutor.log"
