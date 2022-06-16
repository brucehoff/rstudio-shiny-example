FROM rocker/shiny

RUN mkdir -p /srv/shiny-server/example
COPY * /srv/shiny-server/example/

