while true; do curl -s -w "%{http_code}\n" http://localhost:8080/hello ; done
