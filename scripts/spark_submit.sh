#!/bin/bash

/usr/local/spark/bin/spark-submit \
    --master local[2] \
    --packages $SPARK_PACKAGES \
    --class $SPARK_CLASS \
    /jars/$SPARK_JAR \
    $SPARK_PARAMS 2>&1 | tee /logs/out-${SPARK_CLASS}-$(date '+%Y-%m-%d-%H:%M:%S').log
