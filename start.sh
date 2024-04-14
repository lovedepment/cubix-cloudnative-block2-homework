#start.sh
/opt/java/openjdk/bin/java -jar backapp.jar --server.port=8081 &
/opt/java/openjdk/bin/java -jar frontapp.jar --back.url=http://localhost:8081
