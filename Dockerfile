FROM centos:6

MAINTAINER "AgileSrc LLC" <supportn@agilesrc.com>

ENV	JAVA_VERSION=1.8.0

RUN yum update -y
RUN yum install -y java-${JAVA_VERSION}-openjdk-devel
RUN yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

ENV	JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-openjdk.x86_64/

# Define default command.
CMD ["bash"]