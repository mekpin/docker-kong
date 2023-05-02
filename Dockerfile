FROM kong:2.8.3-alpine  
USER root
RUN apk update && apk add git unzip luarocks
COPY kong-middleman-plugin/ plugins/middleman
RUN cd plugins/middleman && luarocks make *.rockspec
USER kong

