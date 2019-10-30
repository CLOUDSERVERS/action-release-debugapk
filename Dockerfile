FROM debian:10.1

LABEL "version"="0.0.3"
LABEL "com.github.actions.name"="Debug APK Publisher"
LABEL "com.github.actions.description"="Build & Publish Debug APK on Github"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/CLOUDSERVERS/action-release-debugapk"
LABEL "maintainer"="CLOUDSERVERS"

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y hub \
	&& apt install -y bc \
	&& apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
