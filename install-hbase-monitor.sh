#!/bin/bash
sudo wget https://github.com/Microsoft/OMS-Agent-for-Linux/releases/download/OMSAgent_GA_v1.2.0-25/omsagent-1.2.0-25.universal.x64.sh -O /tmp/omsagent.x64.sh
sudo sh /tmp/omsagent.x64.sh --upgrade -w $1 -s $2
sudo wget -O /opt/microsoft/omsagent/plugin/filter_hdinsight.rb https://raw.githubusercontent.com/ashishthaps/hdinsightoms/master/filter_hdinsight.rb
sudo wget -O /etc/opt/microsoft/omsagent/conf/omsagent.d/hbase.conf https://raw.githubusercontent.com/ashishthaps/hdinsightoms/master/hbase.conf
sudo service omsagent restart

