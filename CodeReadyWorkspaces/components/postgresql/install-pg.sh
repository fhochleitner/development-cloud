#!/bin/bash

source ../../hogarama_dev.env

helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade -i postgresql bitnami/postgresql --version=9.3.2 --set \
    global.postgresql.postgresqlDatabase=management,\
    global.postgresql.postgresqlUsername=${POSTGRESQL_USERNAME},\
    global.postgresql.postgresqlPassword=${POSTGRESQL_PASSWORD},\
    persistence.enabled=false,\
    securityContext.enabled=false
