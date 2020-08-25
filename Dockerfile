FROM docker.elastic.co/elasticsearch/elasticsearch:7.9.0
#
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
#
LABEL maintainer georges.gregorio@gmail.com

RUN set -eux;\
	#
	# Install Plugin
	#
	bin/elasticsearch-plugin list && \
	bin/elasticsearch-plugin install --batch ingest-attachment && \
	bin/elasticsearch-plugin list
