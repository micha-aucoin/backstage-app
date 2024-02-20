#!/bin/bash

sudo docker run --detach \
    --name postgresql \
    --env POSTGRESQL_PASSWORD=thepass123 \
    --publish 5432:5432 \
    bitnami/postgresql:13


# docker inspect postgresql | jq '.[].NetworkSettings.IPAddress'
# docker exec -it postgresql /bin/bash
# psql -U postgres

