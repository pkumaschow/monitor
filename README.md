# monitor
Two monitoring stacks to play with here:

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

## TICK Stack

Influxdb, Chronograf, Telegraf, Kapacitor, 

`docker-compose up -f docker-compose-influx.yml up`

## Links:

https://github.com/prometheus/prometheus

https://github.com/prometheus/pushgateway

https://github.com/prometheus/node_exporter

