FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.3
#
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
#
LABEL \
	Elasticsearch 6.8.3 \
	maintainer georges.gregorio@gmail.com

ENV \
	Elasticsearch="6.8.3"

RUN set -eux;\
	#
	# Install Plugin
	#
	bin/elasticsearch-plugin list && \
	bin/elasticsearch-plugin install --batch ingest-attachment && \
	bin/elasticsearch-plugin list
