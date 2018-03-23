FROM debian:stretch

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get upgrade -y

RUN apt-get install -y \
  sudo wget curl tar expect git \
  devscripts build-essential lintian ccache pbuilder aptitude

RUN groupadd -g 1000 jenkins \
 && useradd -u 1000 -g 1000 -m jenkins \
 && echo 'Defaults:jenkins !requiretty' | tee -a /etc/sudoers \
 && echo 'jenkins ALL=(ALL:ALL) NOPASSWD: ALL' | tee -a /etc/sudoers

RUN curl https://packages.icinga.com/icinga.key | apt-key add - \
 && DIST=$(awk -F"[)(]+" '/VERSION=/ {print $2}' /etc/os-release) \
 && echo "deb http://packages.icinga.com/debian icinga-${DIST} main" > /etc/apt/sources.list.d/${DIST}-icinga.list
