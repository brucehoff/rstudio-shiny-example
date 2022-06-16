FROM rocker/shiny

RUN mkdir -p /srv/shinyapps/example
COPY * /srv/shinyapps/example/

