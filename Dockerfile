FROM rocker/shiny

RUN mkdir /srv/shinyapps/example
COPY * /srv/shinyapps/example/

