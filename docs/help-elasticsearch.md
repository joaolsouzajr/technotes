
# Elasticsearch Help

## Installing Elasticserach

        curl -L -0 https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution
		zip/elasticsearch/2.3.5/elasticsearch-2.3.5.zip
        unzip elasticsearch-2.3.5.zip
        cd elasticsearch-2.3.5/
        bin/elasticsearch  -d #param -d run in background

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

Sense is a Kibana app that provides an interactive console for submitting requests to Elasticsearch directly from your browser. 

A JSON aware developer's interface to Elasticsearch. Comes with handy machinery such as syntax
highlighting, autocomplete, formatting and code foldingn

		/bin/kibana plugin --install elastic/sense

## Tips

### Java API
* Node client - can forward request directly to the correct node, over port 9300
* Transport client - send request to a remote cluster over port 9300
* The node cluster also communicate over port 9300

### RESTFull API
All other languages can communicate with Elasticsearch over port 9200 using a RESTful API

A request to Elasticsearch consists of the same parts as any HTTP request:
curl -X<VERB> '<PROTOCOL>://<HOST>:<PORT>/<PATH>?<QUERY_STRING>' -d '<BODY>'

* VERB - HTTP method or verb: GET, POST, PUT, HEAD, or DELETE.
* PROTOCOL - http or https
* HOST
* PORT - default is 9200
* PATH - API Endpoint Path may contain multiple components, for example:
	* _count will return the number of documents in the cluster
	* _cluster/stats
	* _nodes/stats/jvm

* QUERY_STRING - ny optional query-string parameters for example ?pretty 
* BODY - A JSON-encoded request body (if the request needs one.) 

### Elasticsearch Clients
https://www.elastic.co/guide/en/elasticsearch/client/index.html

### Index attachments (PDF, XLS, ...)

https://github.com/elastic/elasticsearch-mapper-attachments


## Commands

Test is runing
		curl 'http://localhost:9200/?prett

Cluster Health
		curl -XGET 'http://localhost:9200/_cluster/health?pretty'
* green
	All primary and replica shards are active. 
* yellow
    All primary shards are active, but not all replica shards are active.
* red
	Not all primary shards are active.

Add a index
		PUT /blogs
		{
		   "settings" : {
			  "number_of_shards" : 3,
			  "number_of_replicas" : 1
		   }
		}

Indexing a document
		PUT /{index}/{type}/{id}
		{
		  "field": "value",
		  ...
		}

Return source data
		GET /{index}/{type}/{id}/_source


HTTP Codes
* 200 - Ok, document exist
* 404 - Not found, document not exist
* 201 - created
* 409 - conflict


https://github.com/request/request
https://github.com/cheeriojs/cheerio
https://github.com/paulmillr/chokidar
Exemplo
https://github.com/CrawlerJS/CrawlerJS




