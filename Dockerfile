FROM grafana/grafana
RUN apt update && apt install curl -y
ENV GF_INSTALL_PLUGINS grafana-piechart-panel
ADD heroku-run.sh /
ADD grafana.ini /etc/grafana/grafana.ini
ENTRYPOINT [ "/heroku-run.sh" ]
