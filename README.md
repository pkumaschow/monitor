# monitor
Two monitoring stacks to play with here.

Don't use either of these for production as they are wide open to abuse. 

## Prometheus/Grafana

Prometheus, Grafana, Prometheus Pushgateway and the Prometheus Node Exporter

`docker-compose up`

I have Cockpit running on port 9090 so I mapped prometheus to 9900


### Push Gateway

Metrics can be pushed to the prometheus via the PushGateway using the test script in the scripts directory.


### Prometheus container fails to start?

se-linux might be set to enforcing which can cause problems with docker volumes

Either set it to permissive or run:

`chcon -Rt svirt_sandbox_file_t ./prometheus.yml`

or use :z on the volume:

`- ./config/prometheus.yml:/etc/prometheus/prometheus.yml:z`

## TICK Stack

Influxdb, Chronograf, Telegraf, Kapacitor, 

`docker-compose up -f docker-compose-influx.yml up`

## Elasticsearch / Kibana

`docker-compose up -f docker-compose-elasticsearch.yml up`

Latest docker image 6.5.4 fails to start on Fedora with 

`[1]: max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]`

Workaround is

`sysctl -w vm.max_map_count=262144`

or make this change permanent by editing /etc/sysctl.conf

Image started OK on Mojave.


## Links:

https://github.com/prometheus/prometheus

https://github.com/prometheus/pushgateway

https://github.com/prometheus/node_exporter

