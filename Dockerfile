FROM liquibase/liquibase

USER root

# Add node.js/npm as part of this docker image
# The goal is to enable defining `executeCommand` of `liquibase`.
RUN    apt-get update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs \
    && curl -L https://www.npmjs.com/install.sh | sh

USER liquibase

ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
CMD ["--help"]
