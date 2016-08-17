# Elasticsearch Help

## Installing Elasticserach


        curl -L -0 https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/zip/elasticsearch/2.3.5/elasticsearch-2.3.5.zip
        unzip elasticsearch-2.3.5.zip
        cd elasticsearch-2.3.5/
        bin/elasticsearch
        

## Installing Marvel
Marvel helps you keep a pulse on the state of your Elasticsearch deployment. As
a window into your cluster, Marvel is a tool for optimizing your Elasticsearch
performance and diagnosing issues quickly. 
        
        cd elasticsearch-2.3.5
        bin/plugin install license
        bin/plugin install marvel-agent



## Installing Sense/Kibana

        curl -L -0 https://download.elastic.co/kibana/kibana/kibana-4.5.4-linux-x64.tar.gz
        tar-zxf kibana-4.5.4-linux-x64.tar.gz

Open config/kiban.yml to set elastisearch url.

## Installing Sense plugin for Kibana
https://github.com/elastic/sense

A JSON aware developer's interface to Elasticsearch. Comes with handy machinery such as syntax
highlighting, autocomplete, formatting and code foldingn

bin/kibana plugin --install elastic/sense.
 




curl 'http://localhost:9200/?prett

