curl -X PUT "localhost:9200/bench?pretty" -H 'Content-Type: application/json' -d'
{
  "settings": {
    "analysis": {
      "analyzer": {
        "status_analyzer": {
          "type": "custom", 
          "tokenizer": "status_tokenizer",
          "char_filter": [],
          "filter": []
        }
      },
      "tokenizer": {
        "status_tokenizer": {
          "type": "ngram",
          "min_gram": 1,
          "max_gram": 4
        }
      }
    }
  },
  "mappings": {
    "bench": {  
      "properties": {
        "location": {
          "type": "geo_point"
        },
        "status": {
          "type": "text",
          "analyzer": "status_analyzer"
        }
      }
    }
  }
}
'

#curl -X DELETE "localhost:9200/bench?pretty" -H 'Content-Type: application/json'

