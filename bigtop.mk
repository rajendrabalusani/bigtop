# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

BIGTOP_VERSION=1.0.0

# JDK Version
JDK_VERSION=1.7
JDK_BASE_VERSION=$(JDK_VERSION)

# Scala Version
SCALA_VERSION=2.10.3
SCALA_BASE_VERSION=$(SCALA_VERSION)

# ZooKeeper
ZOOKEEPER_NAME=zookeeper
ZOOKEEPER_RELNOTES_NAME=Apache Zookeeper
ZOOKEEPER_PKG_NAME=zookeeper
ZOOKEEPER_BASE_VERSION=3.4.5
ZOOKEEPER_PKG_VERSION=3.4.5
ZOOKEEPER_RELEASE_VERSION=1
ZOOKEEPER_TARBALL_DST=zookeeper-$(ZOOKEEPER_BASE_VERSION).tar.gz
ZOOKEEPER_TARBALL_SRC=$(ZOOKEEPER_TARBALL_DST)
ZOOKEEPER_DOWNLOAD_PATH=/zookeeper/zookeeper-$(ZOOKEEPER_BASE_VERSION)
ZOOKEEPER_SITE=$(APACHE_MIRROR)$(ZOOKEEPER_DOWNLOAD_PATH)
ZOOKEEPER_ARCHIVE=$(APACHE_ARCHIVE)$(ZOOKEEPER_DOWNLOAD_PATH)
$(eval $(call PACKAGE,zookeeper,ZOOKEEPER))

# Hadoop 0.20.0-based hadoop package
HADOOP_NAME=hadoop
HADOOP_RELNOTES_NAME=Apache Hadoop
HADOOP_BASE_VERSION=2.6.0
HADOOP_PKG_VERSION=2.6.0
HADOOP_RELEASE_VERSION=1
HADOOP_TARBALL_DST=$(HADOOP_NAME)-$(HADOOP_BASE_VERSION).tar.gz
HADOOP_TARBALL_SRC=$(HADOOP_NAME)-$(HADOOP_BASE_VERSION)-src.tar.gz
HADOOP_DOWNLOAD_PATH=/hadoop/common/$(HADOOP_NAME)-$(HADOOP_BASE_VERSION)
HADOOP_SITE=$(APACHE_MIRROR)$(HADOOP_DOWNLOAD_PATH)
HADOOP_ARCHIVE=$(APACHE_ARCHIVE)$(HADOOP_DOWNLOAD_PATH)
$(eval $(call PACKAGE,hadoop,HADOOP))

# Gridgain
GRIDGAIN_HADOOP_NAME=gridgain-hadoop
GRIDGAIN_HADOOP_RELNOTES_NAME=Gridgain
GRIDGAIN_HADOOP_PKG_NAME=gridgain-hadoop
GRIDGAIN_HADOOP_BASE_VERSION=6.5.6
GRIDGAIN_HADOOP_PKG_VERSION=$(GRIDGAIN_HADOOP_BASE_VERSION)
GRIDGAIN_HADOOP_VCS_TAG=release-$(GRIDGAIN_HADOOP_BASE_VERSION)
GRIDGAIN_HADOOP_RELEASE_VERSION=1
GRIDGAIN_HADOOP_TARBALL_DST=$(GRIDGAIN_HADOOP_NAME)-$(GRIDGAIN_HADOOP_BASE_VERSION).tar.gz
GRIDGAIN_HADOOP_TARBALL_SRC=$(GRIDGAIN_HADOOP_VCS_TAG).tar.gz
GRIDGAIN_HADOOP_DOWNLOAD_PATH=https://github.com/gridgain/gridgain/archive
GRIDGAIN_HADOOP_SITE=$(GRIDGAIN_HADOOP_DOWNLOAD_PATH)
GRIDGAIN_HADOOP_ARCHIVE=$(GRIDGAIN_HADOOP_DOWNLOAD_PATH)
$(eval $(call PACKAGE,gridgain-hadoop,GRIDGAIN_HADOOP))

# HBase
HBASE_NAME=hbase
HBASE_RELNOTES_NAME=Apache HBase
HBASE_PKG_NAME=hbase
HBASE_BASE_VERSION=0.98.10.1
HBASE_PKG_VERSION=$(HBASE_BASE_VERSION)
HBASE_RELEASE_VERSION=1
HBASE_TARBALL_DST=hbase-$(HBASE_BASE_VERSION).tar.gz
HBASE_TARBALL_SRC=hbase-$(HBASE_BASE_VERSION)-src.tar.gz
HBASE_DOWNLOAD_PATH=/hbase/hbase-$(HBASE_BASE_VERSION)
HBASE_SITE=$(APACHE_MIRROR)$(HBASE_DOWNLOAD_PATH)
HBASE_ARCHIVE=$(APACHE_ARCHIVE)$(HBASE_DOWNLOAD_PATH)
$(eval $(call PACKAGE,hbase,HBASE))

# Pig
PIG_BASE_VERSION=0.14.0
PIG_PKG_VERSION=$(PIG_BASE_VERSION)
PIG_RELEASE_VERSION=1
PIG_NAME=pig
PIG_RELNOTES_NAME=Apache Pig
PIG_PKG_NAME=pig
PIG_TARBALL_DST=pig-$(PIG_BASE_VERSION)-src.tar.gz
PIG_TARBALL_SRC=$(PIG_TARBALL_DST)
PIG_DOWNLOAD_PATH=/pig/pig-$(PIG_BASE_VERSION)
PIG_SITE=$(APACHE_MIRROR)$(PIG_DOWNLOAD_PATH)
PIG_ARCHIVE=$(APACHE_ARCHIVE)$(PIG_DOWNLOAD_PATH)
$(eval $(call PACKAGE,pig,PIG))

# Hive
HIVE_NAME=hive
HIVE_RELNOTES_NAME=Apache Hive
HIVE_PKG_NAME=hive
HIVE_BASE_VERSION=1.0.0
HIVE_PKG_VERSION=$(HIVE_BASE_VERSION)
HIVE_RELEASE_VERSION=1
HIVE_TARBALL_DST=apache-hive-$(HIVE_BASE_VERSION)-src.tar.gz
HIVE_TARBALL_SRC=$(HIVE_TARBALL_DST)
HIVE_DOWNLOAD_PATH=/hive/hive-$(HIVE_BASE_VERSION)
HIVE_SITE=$(APACHE_MIRROR)$(HIVE_DOWNLOAD_PATH)
HIVE_ARCHIVE=$(APACHE_ARCHIVE)$(HIVE_DOWNLOAD_PATH)
$(eval $(call PACKAGE,hive,HIVE))

# TEZ
TEZ_NAME=tez
TEZ_RELNOTES_NAME=Apache TEZ
TEZ_PKG_NAME=tez
TEZ_BASE_VERSION=0.6.0
TEZ_PKG_VERSION=$(TEZ_BASE_VERSION)
TEZ_RELEASE_VERSION=1
TEZ_TARBALL_DST=apache-tez-$(TEZ_BASE_VERSION)-src.tar.gz
TEZ_TARBALL_SRC=$(TEZ_TARBALL_DST)
TEZ_DOWNLOAD_PATH=/tez/$(TEZ_BASE_VERSION)
TEZ_SITE=$(APACHE_MIRROR)$(TEZ_DOWNLOAD_PATH)
TEZ_ARCHIVE=$(APACHE_ARCHIVE)$(TEZ_DOWNLOAD_PATH)
$(eval $(call PACKAGE,tez,TEZ))

# Sqoop
SQOOP_NAME=sqoop
SQOOP_RELNOTES_NAME=Sqoop
SQOOP_PKG_NAME=sqoop
SQOOP_BASE_VERSION=1.4.5
SQOOP_PKG_VERSION=$(SQOOP_BASE_VERSION)
SQOOP_RELEASE_VERSION=1
SQOOP_TARBALL_DST=$(SQOOP_NAME)-$(SQOOP_BASE_VERSION).tar.gz
SQOOP_TARBALL_SRC=$(SQOOP_TARBALL_DST)
SQOOP_DOWNLOAD_PATH=/sqoop/$(SQOOP_BASE_VERSION)
SQOOP_SITE=$(APACHE_MIRROR)$(SQOOP_DOWNLOAD_PATH)
SQOOP_ARCHIVE=$(APACHE_ARCHIVE)$(SQOOP_DOWNLOAD_PATH)
$(eval $(call PACKAGE,sqoop,SQOOP))

# Sqoop 2
SQOOP2_NAME=sqoop2
SQOOP2_RELNOTES_NAME=Sqoop 2
SQOOP2_PKG_NAME=sqoop2
SQOOP2_BASE_VERSION=1.99.4
SQOOP2_PKG_VERSION=$(SQOOP2_BASE_VERSION)
SQOOP2_RELEASE_VERSION=1
SQOOP2_TARBALL_DST=$(SQOOP_NAME)-$(SQOOP2_BASE_VERSION).tar.gz
SQOOP2_TARBALL_SRC=$(SQOOP2_TARBALL_DST)
SQOOP2_DOWNLOAD_PATH=/sqoop/$(SQOOP2_BASE_VERSION)
SQOOP2_SITE=$(APACHE_MIRROR)$(SQOOP2_DOWNLOAD_PATH)
SQOOP2_ARCHIVE=$(APACHE_ARCHIVE)$(SQOOP2_DOWNLOAD_PATH)
$(eval $(call PACKAGE,sqoop2,SQOOP2))

# Oozie
OOZIE_NAME=oozie
OOZIE_RELNOTES_NAME=Apache Oozie
OOZIE_PKG_NAME=oozie
OOZIE_BASE_VERSION=4.0.1
OOZIE_PKG_VERSION=$(OOZIE_BASE_VERSION)
OOZIE_RELEASE_VERSION=1
OOZIE_TARBALL_DST=oozie-$(OOZIE_BASE_VERSION).tar.gz
OOZIE_TARBALL_SRC=$(OOZIE_TARBALL_DST)
OOZIE_DOWNLOAD_PATH=/$(OOZIE_NAME)/$(OOZIE_BASE_VERSION)
OOZIE_SITE=$(APACHE_MIRROR)$(OOZIE_DOWNLOAD_PATH)
OOZIE_ARCHIVE=$(APACHE_ARCHIVE)$(OOZIE_DOWNLOAD_PATH)
$(eval $(call PACKAGE,oozie,OOZIE))

# Mahout
MAHOUT_NAME=mahout
MAHOUT_RELNOTES_NAME=Apache Mahout
MAHOUT_PKG_NAME=mahout
MAHOUT_BASE_VERSION=0.9
MAHOUT_PKG_VERSION=0.9
MAHOUT_RELEASE_VERSION=1
MAHOUT_TARBALL_DST=mahout-distribution-$(MAHOUT_BASE_VERSION)-src.tar.gz
MAHOUT_TARBALL_SRC=$(MAHOUT_TARBALL_DST)
MAHOUT_DOWNLOAD_PATH=/mahout/$(MAHOUT_BASE_VERSION)
MAHOUT_SITE=$(APACHE_MIRROR)$(MAHOUT_DOWNLOAD_PATH)
MAHOUT_ARCHIVE=$(APACHE_ARCHIVE)$(MAHOUT_DOWNLOAD_PATH)
$(eval $(call PACKAGE,mahout,MAHOUT))

# Flume
FLUME_NAME=flume
FLUME_RELNOTES_NAME=Flume
FLUME_PKG_NAME=flume
FLUME_BASE_VERSION=1.5.2
FLUME_PKG_VERSION=1.5.2
FLUME_RELEASE_VERSION=1
FLUME_TARBALL_DST=apache-$(FLUME_NAME)-$(FLUME_BASE_VERSION)-src.tar.gz
FLUME_TARBALL_SRC=$(FLUME_TARBALL_DST)
FLUME_DOWNLOAD_PATH=/flume/$(FLUME_BASE_VERSION)
FLUME_SITE=$(APACHE_MIRROR)$(FLUME_DOWNLOAD_PATH)
FLUME_ARCHIVE=$(APACHE_ARCHIVE)$(FLUME_DOWNLOAD_PATH)
$(eval $(call PACKAGE,flume,FLUME))

# Giraph
GIRAPH_NAME=giraph
GIRAPH_RELNOTES_NAME=Giraph
GIRAPH_PKG_NAME=giraph
GIRAPH_BASE_VERSION=1.1.0
GIRAPH_PKG_VERSION=1.1.0
GIRAPH_RELEASE_VERSION=1
GIRAPH_TARBALL_DST=$(GIRAPH_NAME)-$(GIRAPH_BASE_VERSION).tar.gz
GIRAPH_TARBALL_SRC=$(GIRAPH_NAME)-dist-$(GIRAPH_BASE_VERSION)-src.tar.gz
GIRAPH_DOWNLOAD_PATH=/giraph/$(GIRAPH_PKG_NAME)-$(GIRAPH_BASE_VERSION)
GIRAPH_SITE=$(APACHE_MIRROR)$(GIRAPH_DOWNLOAD_PATH)
GIRAPH_ARCHIVE=$(APACHE_ARCHIVE)$(GIRAPH_DOWNLOAD_PATH)
$(eval $(call PACKAGE,giraph,GIRAPH))

# Hue
HUE_NAME=hue
HUE_RELNOTES_NAME=Hadoop User Experience
HUE_PKG_NAME=hue
HUE_BASE_VERSION=3.7.1
HUE_PKG_VERSION=3.7.1
HUE_RELEASE_VERSION=1
HUE_TARBALL_DST=hue-$(HUE_BASE_VERSION).tar.gz
HUE_TARBALL_SRC=release-$(HUE_BASE_VERSION).tar.gz
HUE_SITE=https://github.com/cloudera/hue/archive
HUE_ARCHIVE=$(HUE_SITE)
$(eval $(call PACKAGE,hue,HUE))

# DataFu 
DATAFU_NAME=datafu
DATAFU_RELNOTES_NAME=Collection of user-defined functions
DATAFU_PKG_NAME=pig-udf-datafu
DATAFU_BASE_VERSION=1.0.0
DATAFU_PKG_VERSION=1.0.0
DATAFU_RELEASE_VERSION=1
DATAFU_TARBALL_DST=datafu-$(DATAFU_BASE_VERSION).tar.gz
DATAFU_TARBALL_SRC=v$(DATAFU_BASE_VERSION).tar.gz
DATAFU_SITE=https://github.com/linkedin/datafu/archive
DATAFU_ARCHIVE=$(DATAFU_SITE)
$(eval $(call PACKAGE,datafu,DATAFU))

# Solr
SOLR_NAME=solr
SOLR_RELNOTES_NAME=Search engine server
SOLR_PKG_NAME=solr
SOLR_BASE_VERSION=4.9.0
SOLR_PKG_VERSION=$(SOLR_BASE_VERSION)
SOLR_RELEASE_VERSION=1
SOLR_TARBALL_DST=solr-$(SOLR_BASE_VERSION)-src.tgz
SOLR_TARBALL_SRC=$(SOLR_TARBALL_DST)
SOLR_DOWNLOAD_PATH=/lucene/solr/$(SOLR_BASE_VERSION)
SOLR_SITE=$(APACHE_MIRROR)$(SOLR_DOWNLOAD_PATH)
SOLR_ARCHIVE=$(APACHE_ARCHIVE)$(SOLR_DOWNLOAD_PATH)
$(eval $(call PACKAGE,solr,SOLR))

# Crunch
CRUNCH_NAME=crunch
CRUNCH_RELNOTES_NAME=Java library for MapReduce pipelines
CRUNCH_PKG_NAME=crunch
CRUNCH_BASE_VERSION=0.10.0
CRUNCH_PKG_VERSION=0.10.0
CRUNCH_RELEASE_VERSION=1
CRUNCH_TARBALL_DST=apache-crunch-$(CRUNCH_BASE_VERSION)-src.tar.gz
CRUNCH_TARBALL_SRC=$(CRUNCH_TARBALL_DST)
CRUNCH_DOWNLOAD_PATH=/crunch/crunch-$(CRUNCH_BASE_VERSION)
CRUNCH_SITE=$(APACHE_MIRROR)$(CRUNCH_DOWNLOAD_PATH)
CRUNCH_ARCHIVE=$(APACHE_ARCHIVE)$(CRUNCH_DOWNLOAD_PATH)
$(eval $(call PACKAGE,crunch,CRUNCH))

# Spark 
SPARK_NAME=spark
SPARK_RELNOTES_NAME=Spark
SPARK_PKG_NAME=spark-core
SPARK_BASE_VERSION=1.3.0
SPARK_PKG_VERSION=1.3.0
SPARK_RELEASE_VERSION=1
SPARK_TARBALL_DST=spark-$(SPARK_BASE_VERSION).tar.gz
SPARK_TARBALL_SRC=spark-$(SPARK_BASE_VERSION).tgz
SPARK_DOWNLOAD_PATH=/spark/spark-$(SPARK_BASE_VERSION)
SPARK_SITE=$(APACHE_MIRROR)$(SPARK_DOWNLOAD_PATH)
SPARK_ARCHIVE=$(APACHE_ARCHIVE)$(SPARK_DOWNLOAD_PATH)
$(eval $(call PACKAGE,spark,SPARK))

# Phoenix
PHOENIX_NAME=phoenix
PHOENIX_RELNOTES_NAME=Phoenix: A SQL skin over HBase
PHOENIX_PKG_NAME=phoenix
PHOENIX_BASE_VERSION=4.2.2
PHOENIX_PKG_VERSION=4.2.2
PHOENIX_RELEASE_VERSION=1
PHOENIX_TARBALL_DST=phoenix-$(PHOENIX_BASE_VERSION)-src.tar.gz
PHOENIX_TARBALL_SRC=$(PHOENIX_TARBALL_DST)
PHOENIX_DOWNLOAD_PATH=/phoenix/phoenix-$(PHOENIX_BASE_VERSION)/src/
PHOENIX_SITE=$(APACHE_MIRROR)$(PHOENIX_DOWNLOAD_PATH)
PHOENIX_ARCHIVE=$(APACHE_ARCHIVE)$(PHOENIX_DOWNLOAD_PATH)
$(eval $(call PACKAGE,phoenix,PHOENIX))

# Groovy
BIGTOP_GROOVY_NAME=bigtop-groovy
BIGTOP_GROOVY_RELNOTES_NAME=Grovvy: a dynamic language for the Java platform
BIGTOP_GROOVY_PKG_NAME=bigtop-groovy
BIGTOP_GROOVY_BASE_VERSION=2.3.8
BIGTOP_GROOVY_PKG_VERSION=2.3.8
BIGTOP_GROOVY_RELEASE_VERSION=1
BIGTOP_GROOVY_TARBALL_DST=$(BIGTOP_GROOVY_NAME)-$(BIGTOP_GROOVY_BASE_VERSION).tar.gz
BIGTOP_GROOVY_TARBALL_SRC=groovy-binary-$(BIGTOP_GROOVY_BASE_VERSION).zip
BIGTOP_GROOVY_SITE=http://dl.bintray.com/groovy/maven/
BIGTOP_GROOVY_ARCHIVE=$(BIGTOP_GROOVY_SITE)
$(eval $(call PACKAGE,bigtop-groovy,BIGTOP_GROOVY))

# Bigtop-utils
BIGTOP_UTILS_NAME=bigtop-utils
BIGTOP_UTILS__RELNOTES_NAME=Bigtop-utils
BIGTOP_UTILS_PKG_NAME=bigtop-utils
BIGTOP_UTILS_BASE_VERSION=$(subst -,.,$(BIGTOP_VERSION))
BIGTOP_UTILS_PKG_VERSION=$(BIGTOP_UTILS_BASE_VERSION)
BIGTOP_UTILS_RELEASE_VERSION=1
BIGTOP_UTILS_TARBALL_DST=$(BIGTOP_UTILS_PKG_NAME)-$(BIGTOP_UTILS_BASE_VERSION).tar.gz
$(eval $(call PACKAGE,bigtop-utils,BIGTOP_UTILS))

# Bigtop-jsvc
BIGTOP_JSVC_NAME=bigtop-jsvc
BIGTOP_JSVC_RELNOTES_NAME=Apache Commons Daemon (jsvc)
BIGTOP_JSVC_PKG_NAME=bigtop-jsvc
BIGTOP_JSVC_BASE_VERSION=1.0.15
BIGTOP_JSVC_PKG_VERSION=$(BIGTOP_JSVC_BASE_VERSION)
BIGTOP_JSVC_RELEASE_VERSION=1
BIGTOP_JSVC_TARBALL_SRC=commons-daemon-$(BIGTOP_JSVC_BASE_VERSION)-native-src.tar.gz
BIGTOP_JSVC_TARBALL_DST=commons-daemon-$(BIGTOP_JSVC_BASE_VERSION).tar.gz
BIGTOP_JSVC_SITE=$(APACHE_MIRROR)/commons/daemon/source/
BIGTOP_JSVC_ARCHIVE=$(APACHE_ARCHIVE)/commons/daemon/source/
$(eval $(call PACKAGE,bigtop-jsvc,BIGTOP_JSVC))

# Bigtop-tomcat
BIGTOP_TOMCAT_NAME=bigtop-tomcat
BIGTOP_TOMCAT_RELNOTES_NAME=Apache Tomcat
BIGTOP_TOMCAT_PKG_NAME=bigtop-tomcat
BIGTOP_TOMCAT_BASE_VERSION=6.0.36
BIGTOP_TOMCAT_PKG_VERSION=$(BIGTOP_TOMCAT_BASE_VERSION)
BIGTOP_TOMCAT_RELEASE_VERSION=1
BIGTOP_TOMCAT_TARBALL_SRC=apache-tomcat-$(BIGTOP_TOMCAT_BASE_VERSION)-src.tar.gz
BIGTOP_TOMCAT_TARBALL_DST=apache-tomcat-$(BIGTOP_TOMCAT_BASE_VERSION).tar.gz
BIGTOP_TOMCAT_SITE=$(APACHE_MIRROR)/tomcat/tomcat-6/v$(BIGTOP_TOMCAT_BASE_VERSION)/src/
BIGTOP_TOMCAT_ARCHIVE=$(APACHE_ARCHIVE)/tomcat/tomcat-6/v$(BIGTOP_TOMCAT_BASE_VERSION)/src/
$(eval $(call PACKAGE,bigtop-tomcat,BIGTOP_TOMCAT))

# Tachyon
TACHYON_NAME=tachyon
TACHYON_RELNOTES_NAME=Tachyon: a memory-centric distributed file system
TACHYON_PKG_NAME=tachyon
TACHYON_BASE_VERSION=0.6.0
TACHYON_PKG_VERSION=0.6.0
TACHYON_RELEASE_VERSION=1
TACHYON_TARBALL_DST=tachyon-$(TACHYON_BASE_VERSION).tar.gz
TACHYON_TARBALL_SRC=v$(TACHYON_BASE_VERSION).tar.gz
TACHYON_SITE=https://github.com/amplab/tachyon/archive
TACHYON_ARCHIVE=$(TACHYON_SITE)
$(eval $(call PACKAGE,tachyon,TACHYON))

# Kafka
KAFKA_NAME=kafka
KAFKA_RELNOTES_NAME=Apache Kafka
KAFKA_PKG_NAME=kafka
KAFKA_BASE_VERSION=0.8.1.1
KAFKA_PKG_VERSION=$(KAFKA_BASE_VERSION)
KAFKA_RELEASE_VERSION=1
KAFKA_TARBALL_DST=kafka-$(KAFKA_BASE_VERSION).tar.gz
KAFKA_TARBALL_SRC=kafka-$(KAFKA_BASE_VERSION)-src.tgz
KAFKA_DOWNLOAD_PATH=/kafka/$(KAFKA_BASE_VERSION)
KAFKA_SITE=$(APACHE_MIRROR)$(KAFKA_DOWNLOAD_PATH)
KAFKA_ARCHIVE=$(APACHE_ARCHIVE)$(KAFKA_DOWNLOAD_PATH)
$(eval $(call PACKAGE,kafka,KAFKA))
