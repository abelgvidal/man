#rabbit

## View list of queues with some columns
```rabbitmqadmin list queues vhost name node messages message_stats.publish_details.rate```

## Get a list of queues, with all the detail we can take
```rabbitmqadmin -f long -d 3 list queues````

