curl -X PUT "localhost:9200/bench?pretty" -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "properties": {
      "location": {
        "type": "geo_point"
      },
      "status": {
        "type": "keyword"
      }
    }
  }
}
'
