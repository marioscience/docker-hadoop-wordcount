FROM sequenceiq/hadoop-docker

ENV HADOOP_PREFIX /usr/local/hadoop

COPY conf $HADOOP_PREFIX/etc/hadoop/

COPY inputFiles /inputFiles

COPY src /src

COPY start-hadoop.sh /start-hadoop.sh

RUN chown root:root /start-hadoop.sh
RUN chmod 700 /start-hadoop.sh

WORKDIR /src

ENV CLASSPATH $HADOOP_PREFIX/share/hadoop/mapreduce/hadoop-mapreduce-client-core-2.7.0.jar:$HADOOP_PREFIX/share/hadoop/mapreduce/hadoop-mapreduce-client-common-2.7.0.jar:$HADOOP_PREFIX/share/hadoop/common/hadoop-common-2.7.0.jar:/src/*:/src/testRun/*:$HADOOP_PREFIX/lib/*

RUN javac -d . WordCount.java && jar cfm WordCount.jar Manifest.txt testRun/*.class

CMD sh /etc/bootstrap.sh && sh /start-hadoop.sh


