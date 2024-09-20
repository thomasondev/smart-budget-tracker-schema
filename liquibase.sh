source .env

docker run  \
    -it \
    -v ${PWD}/db:/liquibase/changelog \
    --network ${COMPOSE_PROJECT_NAME}_default \
    liquibase/liquibase \
    --username="${POSTGRES_USER}" \
    --password="${POSTGRES_PASSWORD}" \
    --url="jdbc:postgresql://db:5432/${POSTGRES_DB}" \
    --defaults-file=/liquibase/changelog/liquibase.properties \
    $1 $2
    
    
