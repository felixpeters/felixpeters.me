---
title: "How to run a local Spark cluster"
date: 2019-09-16T14:43:56+02:00
---

_Throughout this article, I refer to this [GitHub repository](https://github.com/felixpeters/spark-playground)._

Recently, I started to work with [Apache Spark](https://spark.apache.org/), a
cluster-computing framework focused on big data use cases. Not willing to spend
lots of money on cloud computing resources in order to get familiar with the
technology, I started to look into alternatives. I found [this awesome tutorial](https://towardsdatascience.com/a-journey-into-big-data-with-apache-spark-part-2-4511aa19a900)
explaining how to setup a local cluster based on Docker containers. Following 
the instructions, I setup a [repository](https://github.com/felixpeters/spark-playground) with two example Spark applications.
In the following, I will describe how the cluster works and which applications
I was able to run on it. I will not go into details about Apache Spark or how 
to setup the cluster here. If you're interested in running the cluster locally 
yourself, please refer to the usage instructions in the repository.

## Cluster overview

<img src="../img/cluster_overview.png" style="width: 70%; margin-top: 50px"/>

As you can see in the above image, my Spark cluster comprises four distinct roles:

- Spark master: this is the instance coordinating computing to the workers
- Spark workers: these carry out the computations necessary for the respective task
- Builder: here, the Spark application is built (I use Scala for my examples)
- Submitter: this instance submits the built Spark application to the cluster

The Docker images for Spark master and workers are identical and built upon
alpine OpenJDK Alpine image. The builder image contains the [Scala build tool](https://www.scala-sbt.org/)
in order to create executable JAR files from the Scala code defining the Spark applications. 
A handy way to keep track of your cluster is the Spark Web UI, which can be accessed
at `localhost:8080` in this example. Master, worker and submitter containers
communicate via a [Docker network](https://docs.docker.com/network/).

## Application examples

To start with, I included two example use cases in the repository. Firstly, the
basic `MyFirstScalaSpark` application compares the number of lines containing the
letters _a_ and _b_ and outputs the results to standard output. A more advanced
example can be found in the `RossmannSalesForecasting` class, which uses data 
from the [Rossmann Kaggle challenge](https://www.kaggle.com/c/rossmann-store-sales) 
to build a sales forecasting model based gradient-boosted trees. Here, I cover
the following common data science operations:

- loading data from two CSV files (sales and store data) and partition it based upon the number of available
workers
- join the two datasets, combining store sales data with general information about
the stores
- perform basic feature engineering, i.e., encode categorical variables and rescale
numerical variables (Spark requires all features to be of type `double`)
- split the resulting dataset into training and testing data
- train a gradient-boosted trees model
- evaluate the learned model on the held-out testing data

Actually looking through the logs created in the master, worker and submitter
containers can teach you a lot about the inner workings of Apache Spark (even
if you are not a distributed systems expert).

## Conclusion

Setting up a local Spark cluster was a fun exercise and taught me a lot about
Docker, inner workings of Spark and the contained APIs for machine learning.
In addition, I got to write Scala which I find to be an interesting language in general.
With this post I want to encourage you to test Spark for yourself, so head over to GitHub
and clone the repository to get started quickly. If you or your organization are
interested in learning more about how machine learning can help your business, feel free to contact me via the channels listed on this website.
I'm always looking forward to working on interesting data science use cases. See
the [about page](https://www.felixpeters.me/about/) for more information about
what I can offer.
