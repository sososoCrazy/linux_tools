#!/bin/sh
#redirect -tee -file ~/.ping/ping.log {source -e -v ~/.ping/ping.sh}
sh ~/.ping/ping.sh | tee ~/.ping/ping.log
#source ~/.ping/ping.sh -e -v >~/.ping/ping.log

