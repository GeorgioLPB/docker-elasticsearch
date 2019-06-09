# Elasticsearch container

## Supported tags and respective `Dockerfile` links

| Tags     | Elasticsearch |
|:---------|:--------------|
| `latest` | `6.1.4`       |

* [latest, (latest/Dockerfile)](https://github.com/GeorgioLPB/docker-elasticsearch/blob/master/Dockerfile)

## Quick reference

* Elasticsearch
  * [Elasticsearch official website](https://www.elastic.co/fr/products/elasticsearch)
  * [Elasticsearch Docker User Manual](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html)
  * [Elasticsearch Docker Official Images](https://www.docker.elastic.co/)

## What is Elasticsearch?

* Elasticsearch is a distributed, RESTful search and analytics engine capable of solving a growing number of use cases. As the heart of the Elastic Stack, it centrally stores your data so you can discover the expected and uncover the unexpected.
* This container is intended to be used with the [Nextcloud](https://nextcloud.com/) self-hosted productivity platform and its application [Full text search - Elasticsearch Platform](https://apps.nextcloud.com/apps/fulltextsearch_elasticsearch), but it can also be used in other situations.

## How to use this image

### Simple Usage

	docker run -d -p 9200:9200 ggregorio/elasticsearch

### Usage with persistent data

	docker run -d -p 9200:9200 -v $(pwd)/data:/usr/share/elasticsearch/data ggregorio/elasticsearch

## Configuration (environment variables)

None at the moment.
