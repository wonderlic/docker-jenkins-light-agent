FROM jenkins/inbound-agent:latest
LABEL maintainer="Wonderlic DevOps <DevOps@wonderlic.com>"

USER root

RUN \
	apt-get update && \
	apt-get install -y --no-install-recommends docker.io && \
	rm -rf /var/lib/apt/lists/*

USER jenkins
