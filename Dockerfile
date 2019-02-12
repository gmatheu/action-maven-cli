FROM binarybabel/oracle-jdk:8-debian

LABEL "name"="Maven CLI Action (Oracle JDK 8)"
LABEL "maintainer"="Gonzalo Matheu <gonzalommj@gmail.com"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="GitHub ActIon for Maven"
LABEL "com.github.actions.description"="Wraps the Maven CLI to enable Maven commands."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="orange"

RUN apt update \
    && apt install -y zip \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
      /tmp/* \
      /var/tmp/*
RUN curl -s "https://get.sdkman.io" | bash
RUN bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk install maven 3.6.0'
COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
