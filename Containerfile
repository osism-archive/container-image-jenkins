ARG VERSION
FROM bitnami/jenkins:${VERSION}

# Change user to perform privileged actions
USER 0

RUN /install-plugins.sh \
    ansible:1.1 \
    ansible-tower:0.16.0 \
    credentials:2.4.1 \
    ssh-credentials:1.18.2

# Revert to the original non-root user
USER 1001

LABEL "org.opencontainers.image.documentation"="https://docs.osism.de" \
      "org.opencontainers.image.licenses"="ASL 2.0" \
      "org.opencontainers.image.source"="https://github.com/osism/container-image-jenkins" \
      "org.opencontainers.image.url"="https://www.osism.de" \
      "org.opencontainers.image.vendor"="Betacloud Solutions GmbH"
