FROM elasticsearch:2.0.0

# currently there is an issue building with this option
#RUN plugin -i elasticsearch/marvel/latest

#docker run -d --name=elasticsearch -v /point/to/elasticsearch/plugins:/usr/share/elasticsearch/plugins elasticsearch:latest 
#docker exec -it elasticsearch /usr/share/elasticsearch/bin/plugin -i elasticsearch/marvel/latest
#docker restart elasticsearch

CMD ["elasticsearch", "--network.host", "_non_loopback_"]
