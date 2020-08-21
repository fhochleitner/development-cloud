#!/bin/bash

source ../../hogarama_dev.env

helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade -i mongodb bitnami/mongodb --version=8.3.2 --set \
    auth.enabled=true,\
    auth.rootPassword=${MONGODB_ROOT_PASSWORD},\
    auth.username=${MONGOODB_USERNAME},\
    auth.password=${MONGODB_PASSWORD},\
    auth.database=${MONGODB_DATABASE},\
    replicaCount=1,\
    podSecurityContext.enabled=false,\
    containerSecurityContext.enabled=false,\
    persistence.enabled=false,\
    arbiter.enabled=false,\
    serviceAccount.create=false

