#!/bin/bash

wget https://github.com/Microsoft/OMS-Agent-for-Linux/releases/download/OMSAgent_GA_v1.2.0-25/omsagent-1.2.0-25.universal.x64.sh -O /tmp/omsagentx64.sh
sh /tmp/omsagentx64.sh --upgrade -w $1 -s $2
wget -O /etc/opt/microsoft/omsagent/plugin/filter_hdinsight.rb https://github.com/ashishthaps/hdinsightoms/blob/master/filter_hdinsight.rb
wget -O /etc/opt/microsoft/omsagent/conf/omsagent.d/hbase.conf https://github.com/ashishthaps/hdinsightoms/blob/master/hbase.conf
sudo service omsagent restart
