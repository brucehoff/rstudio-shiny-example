FROM rocker/shiny

RUN mkdir -p /srv/shiny-server/example
COPY *.R /srv/shiny-server/example/
