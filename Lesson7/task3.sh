#!/bin/bash
name="apache2"
PID=`ps -ef | grep $name | head -n 1 | tr -s " "| cut -d " " -f2`
ps_out=`ps -ef | grep $name | grep -v 'grep' | grep -v $0`
result=$(echo $ps_out | grep "$name")
if [[ "$result" != "" ]]
then
systemctl stop apache2
echo "Process $name $PID stopped"
else
echo "Not Running"
fi
if [[ "$result" != "" ]]
then
sleep 5
echo "process $name $PID suspended"
fi
if [[ "$result" != "" ]]
then
sleep 30
echo "process $name $PID suspended"
fi