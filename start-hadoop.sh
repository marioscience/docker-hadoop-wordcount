#!/bin/bash

echo "Custom Script..."
echo $HADOOP_PREFIX

#&& $HADOOP_PREFIX/bin/hdfs fsck -delete \

#$HADOOP_PREFIX/bin/hdfs namenode -format \
#&& service sshd start \
#&& $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh \
#&& $HADOOP_PREFIX/sbin/start-dfs.sh \
#&& echo "Waiting for data nodes to come online..." \
#&& sleep 10 \
#&& $HADOOP_PREFIX/bin/hdfs dfsadmin -safemode get \
#&& $HADOOP_PREFIX/bin/hdfs dfsadmin -safemode leave \
#&& 
$HADOOP_PREFIX/bin/hdfs dfs -copyFromLocal /inputFiles / \
&& $HADOOP_PREFIX/bin/hadoop jar /src/WordCount.jar /inputFiles /mapreduce_output
