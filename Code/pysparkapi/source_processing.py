from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("souce process").getOrCreate()

source_df = spark.read.csv("s3://pysparkapi1/CSV/banktxn.csv", header=True)
source_df.write.parquet("s3://pysparkapi1/parquet/")
