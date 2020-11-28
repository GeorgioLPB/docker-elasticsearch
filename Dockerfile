FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.0
#
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
#
LABEL maintainer georges.gregorio@gmail.com

RUN set -eux;\
	apt-get update && \
	apt-get install -y tesseract-ocr tesseract-ocr-fra && \
	rm -rf /var/lib/apt/lists/* && \
	#
	# Install Plugin
	#
	bin/elasticsearch-plugin install --batch ingest-attachment && \
	
