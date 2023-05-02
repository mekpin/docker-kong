FROM kong:2.8.3-alpine  
USER root
RUN apk update && apk add git unzip luarocks

#repeat if you must
COPY kong-middleman-plugin/ plugins/middleman
RUN cd plugins/middleman && luarocks make *.rockspec
#end of repeat code

USER kong
