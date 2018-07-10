# spark-standalone
Spark standalone Docker image

```
docker run -it --rm -v /DIR/TO/JARS/:/jars/ --name spark \
    --env SPARK_PACKAGES=<SPARK_MVN_PACKAGES> \
    --env SPARK_CLASS=<SPARK_CLASS> \
    --env SPARK_JAR=<JAR_NAME> \
    --env SPARK_PARAMS=<JOB_CLI_PARAMS>
```
