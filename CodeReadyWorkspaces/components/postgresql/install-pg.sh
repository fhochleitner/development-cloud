#!/bin/bash

source ../../hogarama_dev.env

helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade -i postgresql bitnami/postgresql --version=9.3.2 \
    --set global.postgresql.postgresqlDatabase=management \
    --set global.postgresql.postgresqlUsername=${POSTGRESQL_USERNAME} \
    --set global.postgresql.postgresqlPassword=${POSTGRESQL_PASSWORD} \
    --set persistence.enabled=false \
    --set securityContext.enabled=false
