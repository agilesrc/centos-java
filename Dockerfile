FROM centos:latest

MAINTAINER "AgileSrc LLC" <support@agilesrc.com>

ENV	JAVA_VERSION=1.8.0

RUN yum install -y java-${JAVA_VERSION}-openjdk-devel && yum clean all

# Set environment variables.
ENV HOME /root
ENV	JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-openjdk-devel/

# Define default command.
CMD ["bash"]
