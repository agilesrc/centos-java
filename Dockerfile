FROM centos:7

MAINTAINER "AgileSrc LLC" <support@agilesrc.com>

ENV	JAVA_VERSION=1.7.0

RUN yum update -y
RUN yum install -y java-${JAVA_VERSION}-openjdk-devel
RUN yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

ENV	JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-openjdk/

# Define default command.
CMD ["bash"]
