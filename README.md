# spark-standalone
Spark standalone Docker image

```
docker run -it --rm \
    -v /DIR/TO/JARS/:/jars/ \
    -v /DIR/FOR/LOGS:/logs/ \
    --name spark \
    --env SPARK_PACKAGES=<SPARK_MVN_PACKAGES> \
    --env SPARK_CLASS=<SPARK_CLASS> \
    --env SPARK_JAR=<JAR_NAME> \
    --env SPARK_PARAMS=<JOB_CLI_PARAMS> \
    needmorenodes/spark-submit-local:2.2.0
```
