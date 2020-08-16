while true; do curl -s -w "%{http_code}\n" http://35.240.191.200:8080/hello ; done
