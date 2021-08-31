## @author Abraão Silva ##
FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.0

ENV PATH /usr/share/elasticsearch/bin:$PATH

# switch user to elasticsearch
USER elasticsearch

# install plugins
RUN elasticsearch-plugin install analysis-kuromoji
RUN elasticsearch-plugin install analysis-icu
