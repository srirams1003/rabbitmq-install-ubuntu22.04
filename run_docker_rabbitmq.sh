#!/bin/bash

# Run RabbitMQ container
docker run -d --rm --name rabbitmq -p 5552:5552 -p 15672:15672 -p 5672:5672 \
    -e RABBITMQ_SERVER_ADDITIONAL_ERL_ARGS='-rabbitmq_stream advertised_host localhost' \
    rabbitmq:3.13

# Wait for RabbitMQ container to be ready
echo "Waiting for RabbitMQ to start..."
sleep 20

# Enable rabbitmq_stream and rabbitmq_stream_management plugins
docker exec rabbitmq rabbitmq-plugins enable rabbitmq_stream rabbitmq_stream_management

