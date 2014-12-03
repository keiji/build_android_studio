# VERSION 1.0
# DOCKER-VERSION  1.2.0
# DESCRIPTION:    android-studio-dev Build Container

FROM dockerbase/devbase-jdk
MAINTAINER Keiji ARIYAMA

USER    root

# setup
RUN apt-get update
RUN apt-get install -y locales && \
	echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
	locale-gen en_US.UTF-8 && update-locale en_US.UTF-8
RUN apt-get install -y git-core ant python

RUN git config --global user.email "android" && \
		git config --global user.name "android"

# setup repo
RUN mkdir ~/bin && \
	curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

ADD build.sh build.sh
RUN mv /build.sh ~/ && chmod +x ~/build.sh
