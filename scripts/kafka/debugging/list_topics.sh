docker compose -p elixir-conf-2024-broadway-training \
    exec kafka /opt/kafka/bin/kafka-topics.sh \
    --list \
    --bootstrap-server kafka:9092
