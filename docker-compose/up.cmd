docker-compose -f docker-compose.yml ^
               -f docker-compose.db.yml ^
               -f docker-compose.message_broker.yml ^
               -f docker-compose.monitoring.yml ^
               -f docker-compose.services.yml ^
               up