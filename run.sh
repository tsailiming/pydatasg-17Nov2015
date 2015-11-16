#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SPARK_HOME=$DIR/spark-1.5.2-bin-hadoop2.6
export PYSPARK_DRIVER_PYTHON=ipython
export IPYTHON_OPTS="notebook --no-browser --port=8889 --notebook-dir='$DIR' --ip='127.0.0.1'" 

$SPARK_HOME/bin/pyspark --packages com.databricks:spark-csv_2.10:1.1.0 --master local[2]


