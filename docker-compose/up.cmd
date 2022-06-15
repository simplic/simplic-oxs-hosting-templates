REM Pull all images with :latest or a specific tag
if "%1" == "pull" (
    docker-compose -f docker-compose.yml ^
                   -f docker-compose.db.yml ^
                   -f docker-compose.message_broker.yml ^
                   -f docker-compose.monitoring.yml ^
                   -f docker-compose.services.yml ^
                   -f docker-compose.frontend.yml ^
                   -f docker-compose.custom.yml ^
                   --env-file .env.dev pull
)

docker-compose -f docker-compose.yml ^
               -f docker-compose.db.yml ^
               -f docker-compose.message_broker.yml ^
               -f docker-compose.monitoring.yml ^
               -f docker-compose.services.yml ^
               -f docker-compose.frontend.yml ^
               -f docker-compose.custom.yml ^
               --env-file .env.dev up

REM `docker-compose.custom.yml` must always be the last file, because it will override other settings   