#!/bin/bash 

# pid=$(ps -fe | grep '[U]serEventAgent (System)' | awk '{print $2}')

pid=$(pmset -g assertions | grep '[c]om.apple.apfsd.wbc_drain' | awk '{print $2}' | cut -d \( -f1)

if [[ -n $pid ]]; then
    kill -9 $pid
    echo `date "+%Y-%m-%d %H:%M:%S"` "killed process" $pid
else
    echo `date "+%Y-%m-%d %H:%M:%S"` "WBC does not exist"
    exit
fi

sleep 5

pid=$(pmset -g assertions | grep '[c]om.apple.apfsd.wbc_drain' | awk '{print $2}' | cut -d \( -f1)

if [[ -n $pid ]]; then
    kill -9 $pid
    echo `date "+%Y-%m-%d %H:%M:%S"` "killed process" $pid
else
    echo `date "+%Y-%m-%d %H:%M:%S"` "WBC does not exist"
fi

