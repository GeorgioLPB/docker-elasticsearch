#
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
#
FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.4

LABEL \
	Elasticsearch 6.1.4 \
	maintainer georges.gregorio@gmail.com

ENV \
	Elasticsearch="6.1.4"

RUN set -eux;\
	#
	# Install Plugin
	#
	bin/elasticsearch-plugin list && \
	bin/elasticsearch-plugin install --batch ingest-attachment && \
	bin/elasticsearch-plugin list

#VOLUME [ "/usr/share/elasticsearch/data" ]

#EXPOSE 9200/tcp
#EXPOSE 9300/tcp

#WORKDIR /usr/share/elasticsearch

#ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]

#CMD ['eswrapper']
