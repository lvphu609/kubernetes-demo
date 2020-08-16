while true; do curl -s -w "\t%{http_code}\n" http://35.240.193.227:8080/hello; sleep 2; done
