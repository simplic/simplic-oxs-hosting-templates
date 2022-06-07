docker-compose -f docker-compose.yml ^
               -f docker-compose.db.yml ^
               -f docker-compose.message_broker.yml ^
               -f docker-compose.monitoring.yml ^
               -f docker-compose.services.yml ^
               -f docker-compose.frontend.yml ^
               up