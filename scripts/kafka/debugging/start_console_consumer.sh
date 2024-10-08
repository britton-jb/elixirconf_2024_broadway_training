docker compose -p elixir-conf-2024-broadway-training \
    exec kafka /opt/kafka/bin/kafka-console-consumer.sh \
    --bootstrap-server kafka:9092 \
    --from-beginning \
    --property print.key=true \
    --topic postgres.public.transactions

# docker run --tty \
# --network elixirconf_2024_broadway_training \
# confluentinc/cp-kafkacat \
# kafkacat -b kafka:9092 -C \
# -t postgres.public.transactions

##
# Example payload portion of output:
#
# {
#   "payload": {
#     "before": null,
#     "after": {
#       "id":4381,
#       "start_x":1,
#       "start_y":1,
#       "current_x":1,
#       "current_y":1,
#       "is_on_journey":true,
#       "inserted_at":1660516006000,
#       "updated_at":1660516006000
#     }
#   }
# }
