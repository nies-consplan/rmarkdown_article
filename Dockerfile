FROM uribo/ramora:latest

RUN set -x && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    gnupg &&
  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && \
  apt-get install -y --no-install-recommends \
    nodejs \
    npm && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN set -x && \
  installGithub.r \
    "uribo/textlintr" && \
  rm -rf /tmp/downloaded_packages/ /tmp/*.rds
