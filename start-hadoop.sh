#!/bin/bash

echo "Custom Script..."
echo $HADOOP_PREFIX

$HADOOP_PREFIX/bin/hdfs dfs -copyFromLocal /inputFiles / &&\
$HADOOP_PREFIX/bin/hadoop jar /src/WordCount.jar /inputFiles /mapreduce_output
