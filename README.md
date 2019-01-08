# monitor

Docker compose for Prometheus, Grafana, Prometheus Pushgateway and the Prometheus Node Exporter

I have Cockpit running on port 9090 so I mapped prometheus to 9900

If se-linux is enforcing on your docker host either set it to permissive or run:

`chcon -Rt svirt_sandbox_file_t ./prometheus.yml`

Links:

https://github.com/prometheus/prometheus
https://github.com/prometheus/pushgateway
https://github.com/prometheus/node_exporter

