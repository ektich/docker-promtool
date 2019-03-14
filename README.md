# Docker Image with Prometheus promtool

This image can be used to create containers that will run promtool command-line utility from the [Prometheus](https://github.com/prometheus/prometheus) project.

To build the image and call it `promtool` run `docker build -t promtool .`.

To check rules file `rule1.yml`, saved in the current directory, create and run the container as follows:

`docker run --rm -t -i -v $(pwd):/rules promtool check rules /rules/rule1.yml`

To check configuration file `prometheus.yml`, saved in the current directory, create and run the container as follows:

`docker run --rm -t -i -v $(pwd):/opt/prometheus promtool check config /opt/prometheus/prometheus.yml`
