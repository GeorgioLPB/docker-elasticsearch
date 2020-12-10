FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.1
#
# https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html
#
LABEL maintainer georges.gregorio@gmail.com
ENV EPEL_RELEASE="epel-release-8-9.el8.noarch.rpm"

RUN set -eux;\
	#
	# leptonica
	#
	dnf --enablerepo=PowerTools install -y leptonica && \
	#
	# tesseract
	#
	curl --output "/tmp/${EPEL_RELEASE}" \
		"https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/e/${EPEL_RELEASE}" && \
	rpm -Uvh "/tmp/${EPEL_RELEASE}" && \
	dnf install -y tesseract tesseract-langpack-fra liberation-fonts && \
	#
	# Install Plugin
	#
	bin/elasticsearch-plugin install --batch ingest-attachment

