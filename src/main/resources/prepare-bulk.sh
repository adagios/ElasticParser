curl http://data.githubarchive.org/2014-08-10-10.json.gz | gzcat | awk '{ sub(/{"created_at":/, "{ \"index\" : { \"_index\" : \"unit\", \"_type\" : \"test\" } }\n{\"created_at\":"); print}' > bulk-insert.json