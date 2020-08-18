while true; do curl -s -w "\t%{http_code}\n" http://localhost:8080/hello; sleep 2; done
